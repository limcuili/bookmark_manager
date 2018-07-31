require './models/bookmark.rb'

describe Bookmark do

  subject(:bookmarks) { described_class.new }

  describe "#all" do
    xit "Knows its bookmarks" do
      expect(bookmarks.all).to eq []
    end
  end

end
