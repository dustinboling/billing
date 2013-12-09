require 'spec_helper'

describe "plans/edit" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :stripe_id => "MyString",
      :name => "MyString",
      :description => "MyString",
      :amount => 1,
      :interval => "MyString",
      :interval_count => 1,
      :trial_period_days => 1
    ))
  end

  it "renders the edit plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plan_path(@plan), "post" do
      assert_select "input#plan_stripe_id[name=?]", "plan[stripe_id]"
      assert_select "input#plan_name[name=?]", "plan[name]"
      assert_select "input#plan_description[name=?]", "plan[description]"
      assert_select "input#plan_amount[name=?]", "plan[amount]"
      assert_select "input#plan_interval[name=?]", "plan[interval]"
      assert_select "input#plan_interval_count[name=?]", "plan[interval_count]"
      assert_select "input#plan_trial_period_days[name=?]", "plan[trial_period_days]"
    end
  end
end
