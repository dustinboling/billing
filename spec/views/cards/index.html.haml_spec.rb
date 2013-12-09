require 'spec_helper'

describe "cards/index" do
  before(:each) do
    assign(:cards, [
      stub_model(Card,
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
      ),
      stub_model(Card,
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
      )
    ])
  end

  it "renders a list of cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Stripe".to_s, :count => 2
    assert_select "tr>td", :text => "Last4".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Fingerprint".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line1".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line2".to_s, :count => 2
    assert_select "tr>td", :text => "Address City".to_s, :count => 2
    assert_select "tr>td", :text => "Address State".to_s, :count => 2
    assert_select "tr>td", :text => "Address Zip".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
