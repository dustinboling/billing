require 'spec_helper'

describe "plans/show" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :stripe_id => "Stripe",
      :name => "Name",
      :description => "Description",
      :amount => 1,
      :interval => "Interval",
      :interval_count => 2,
      :trial_period_days => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Stripe/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/Interval/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
