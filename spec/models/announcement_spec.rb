require 'rails_helper'

RSpec.describe "Announcement", type: :model do
  it "can't save without title" do
    announcement = Announcement.new(user_id: 1,
                                    description: 'descrição',
                                    category_id: 1,
                                    sub_category_id: 1,
                                    price: 100)

    expect(announcement.save).to be false
  end

  it "can't save without description" do
    announcement = Announcement.new(user_id: 1,
                                    title: 'titulo',
                                    category_id: 1,
                                    sub_category_id: 1,
                                    price: 100)

    expect(announcement.save).to be false
  end

  it "can't save without category_id" do
    announcement = Announcement.new(user_id: 1,
                                    title: 'titulo',
                                    description: 'descrição',
                                    sub_category_id: 1,
                                    price: 100)

    expect(announcement.save).to be false
  end

  it "can't save without sub_category_id" do
    announcement = announcement = Announcement.new(user_id: 1,
                                    title: 'titulo',
                                    description: 'descrição',
                                    category_id: 1,
                                    price: 100)

    expect(announcement.save).to be false
  end

  it "can't save without price" do
    announcement = Announcement.new(user_id: 1,
                                    title: 'titulo',
                                    description: 'descrição',
                                    category_id: 1,
                                    sub_category_id: 1)

    expect(announcement.save).to be false
  end

  it "save announcement" do
    announcement = Announcement.new(user_id: 1,
                                    title: 'titulo',
                                    description: 'descrição',
                                    category_id: 1,
                                    sub_category_id: 1,
                                    price: 100)

    expect(announcement.save).to be true
  end

end
