require 'pg'

class Bookmark

  def self.all
    connection = PG.connect :dbname => 'bookmark_manager', :user => 'marek'
    result = connection.exec "TABLE bookmarks"
    result.map { |bookmark| { :url => bookmark['url'], :title => bookmark['title'] } }
  end

end
