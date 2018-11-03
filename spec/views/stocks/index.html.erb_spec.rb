require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :ticker => "Ticker",
        :user_id => 2
      ),
      Stock.create!(
        :ticker => "Ticker",
        :user_id => 2
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => "Ticker".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
