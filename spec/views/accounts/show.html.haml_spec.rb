require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :stripe_id => "Stripe",
      :name => "Name",
      :email => "Email",
      :default_card => "Default Card",
      :delinquent => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Stripe/)
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Default Card/)
    rendered.should match(/false/)
  end
end
