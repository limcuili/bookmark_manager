class Bookmark

  BOOKMARKS =
  [
    {
      :title => "Google",
      :url => 'https://www.google.co.uk/'
    },
    {
      :title => "Makers' course outline",
      :url => 'https://github.com/makersacademy/course/blob/master/week_outlines.md'
    }
  ]

  def all
    BOOKMARKS
  end

end
