require 'rails_helper'

RSpec.describe Account, type: :model do
    it "can't save without title" do
      announcement = Announcement.new
      expect(announcement.save).to be false
    end
end
