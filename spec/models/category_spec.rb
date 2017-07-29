require 'rails_helper'

RSpec.describe Announcement, type: :model do
  it "can't save whitout category_name" do
    category = Category.new
    expect(category.save).to be false
  end

  it "save category" do
    category = Category.new(category_name: "categoria")
    expect(category.save).to be true
  end
end
