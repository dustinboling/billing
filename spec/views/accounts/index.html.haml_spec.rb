require 'spec_helper'

describe "accounts/index" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :stripe_id => "Stripe",
        :name => "Name",
        :email => "Email",
        :default_card => "Default Card",
        :delinquent => false
      ),
      stub_model(Account,
        :stripe_id => "Stripe",
        :name => "Name",
        :email => "Email",
        :default_card => "Default Card",
        :delinquent => false
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Stripe".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Default Card".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
