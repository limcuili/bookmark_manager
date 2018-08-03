require 'pg'
require 'uri'

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
    return 'Bookmark not created' unless self.valid_url?(url)
    connection.exec "INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}')"
  end

  def self.valid_url?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end

end
