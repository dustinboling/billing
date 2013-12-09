require 'spec_helper'

describe "cards/show" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :stripe_id => "Stripe",
      :last4 => "Last4",
      :type => "Type",
      :exp_month => 1,
      :exp_year => 2,
      :fingerprint => "Fingerprint",
      :name => "Name",
      :address_line1 => "Address Line1",
      :address_line2 => "Address Line2",
      :address_city => "Address City",
      :address_state => "Address State",
      :address_zip => "Address Zip",
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Stripe/)
    rendered.should match(/Last4/)
    rendered.should match(/Type/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Fingerprint/)
    rendered.should match(/Name/)
    rendered.should match(/Address Line1/)
    rendered.should match(/Address Line2/)
    rendered.should match(/Address City/)
    rendered.should match(/Address State/)
    rendered.should match(/Address Zip/)
    rendered.should match(//)
  end
end
