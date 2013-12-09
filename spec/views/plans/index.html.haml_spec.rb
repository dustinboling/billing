require 'spec_helper'

describe "plans/index" do
  before(:each) do
    assign(:plans, [
      stub_model(Plan,
        :stripe_id => "Stripe",
        :name => "Name",
        :description => "Description",
        :amount => 1,
        :interval => "Interval",
        :interval_count => 2,
        :trial_period_days => 3
      ),
      stub_model(Plan,
        :stripe_id => "Stripe",
        :name => "Name",
        :description => "Description",
        :amount => 1,
        :interval => "Interval",
        :interval_count => 2,
        :trial_period_days => 3
      )
    ])
  end

  it "renders a list of plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Stripe".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Interval".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
