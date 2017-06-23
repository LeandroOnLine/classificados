require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_cant_save_withou_title
    announcement = Announcement.new
    assert_not announcement.save
  end
end
