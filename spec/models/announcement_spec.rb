require 'rails_helper'

RSpec.describe Announcement, type: :model do
  it "can't save without title" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.description = 'description'
    announcement.category_id = 1
    announcement.sub_category_id = 1
    expect(announcement.save).to be false
  end

  it "can't save without description" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.title = 'title'
    announcement.category_id = 1
    announcement.sub_category_id = 1
    expect(announcement.save).to be false
  end

  it "can't save without category_id" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.title = 'title'
    announcement.description = 'description'
    announcement.sub_category_id = 1
    expect(announcement.save).to be false
  end

  it "can't save without sub_category_id" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.title = 'title'
    announcement.description = 'description'
    announcement.category_id = 1
    expect(announcement.save).to be false
  end

  it "save announcement" do
    announcement = Announcement.new
    announcement.user = User.new
    announcement.title = 'title'
    announcement.description = 'description'
    announcement.category_id = 1
    announcement.sub_category_id = 1
    expect(announcement.save).to be true
  end

end
