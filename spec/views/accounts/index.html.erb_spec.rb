require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :index => "Index",
        :user_id => 2
      ),
      Account.create!(
        :index => "Index",
        :user_id => 2
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
