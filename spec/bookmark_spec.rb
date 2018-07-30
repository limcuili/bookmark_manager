require './models/bookmark.rb'

describe Bookmark do

  subject(:bookmarks) { described_class.new }

  describe "#all" do
    it "Knows its bookmarks" do
      expect(bookmarks.all).to match_array(Bookmark::BOOKMARKS)
    end
  end

end
