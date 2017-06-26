require 'rails_helper'

RSpec.describe Announcement, type: :model do
  it "can't save without title" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.description = 'description'
    expect(announcement.save).to be false
  end

  it "can't save without description" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.title = 'title'
    expect(announcement.save).to be false
  end

  it "can't save without category_id" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.title = 'title'
    announcement.description = 'description'
    expect(announcement.save).to be false
  end
end
