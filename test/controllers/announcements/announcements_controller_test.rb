require 'test_helper'

class Announcements::AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @announcements_announcement = announcements_announcements(:one)
  end

  test "should get index" do
    get announcements_announcements_url
    assert_response :success
  end

  test "should get new" do
    get new_announcements_announcement_url
    assert_response :success
  end

  test "should create announcements_announcement" do
    assert_difference('Announcements::Announcement.count') do
      post announcements_announcements_url, params: { announcements_announcement: { category_id: @announcements_announcement.category_id, description: @announcements_announcement.description, expire_date: @announcements_announcement.expire_date, login_id: @announcements_announcement.login_id, price: @announcements_announcement.price, sub_category_id: @announcements_announcement.sub_category_id, title: @announcements_announcement.title } }
    end

    assert_redirected_to announcements_announcement_url(Announcements::Announcement.last)
  end

  test "should show announcements_announcement" do
    get announcements_announcement_url(@announcements_announcement)
    assert_response :success
  end

  test "should get edit" do
    get edit_announcements_announcement_url(@announcements_announcement)
    assert_response :success
  end

  test "should update announcements_announcement" do
    patch announcements_announcement_url(@announcements_announcement), params: { announcements_announcement: { category_id: @announcements_announcement.category_id, description: @announcements_announcement.description, expire_date: @announcements_announcement.expire_date, login_id: @announcements_announcement.login_id, price: @announcements_announcement.price, sub_category_id: @announcements_announcement.sub_category_id, title: @announcements_announcement.title } }
    assert_redirected_to announcements_announcement_url(@announcements_announcement)
  end

  test "should destroy announcements_announcement" do
    assert_difference('Announcements::Announcement.count', -1) do
      delete announcements_announcement_url(@announcements_announcement)
    end

    assert_redirected_to announcements_announcements_url
  end
end
