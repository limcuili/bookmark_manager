require 'pg'

class Bookmark

  def self.all
    if ENV['RACK_ENV'] == 'development'
      connection = PG.connect(dbname: 'bookmark_manager')
    elsif ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    end
    result = connection.exec "TABLE bookmarks"
    result.map { |bookmark| { :url => bookmark['url'], :title => bookmark['title'] } }
  end

  def self.add(title,url)
    if ENV['RACK_ENV'] == 'development'
      connection = PG.connect(dbname: 'bookmark_manager')
    elsif ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    end
    connection.exec "INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}')"
  end

end
