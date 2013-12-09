require 'spec_helper'

describe "cards/edit" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :stripe_id => "MyString",
      :last4 => "MyString",
      :type => "",
      :exp_month => 1,
      :exp_year => 1,
      :fingerprint => "MyString",
      :name => "MyString",
      :address_line1 => "MyString",
      :address_line2 => "MyString",
      :address_city => "MyString",
      :address_state => "MyString",
      :address_zip => "MyString",
      :account => nil
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", card_path(@card), "post" do
      assert_select "input#card_stripe_id[name=?]", "card[stripe_id]"
      assert_select "input#card_last4[name=?]", "card[last4]"
      assert_select "input#card_type[name=?]", "card[type]"
      assert_select "input#card_exp_month[name=?]", "card[exp_month]"
      assert_select "input#card_exp_year[name=?]", "card[exp_year]"
      assert_select "input#card_fingerprint[name=?]", "card[fingerprint]"
      assert_select "input#card_name[name=?]", "card[name]"
      assert_select "input#card_address_line1[name=?]", "card[address_line1]"
      assert_select "input#card_address_line2[name=?]", "card[address_line2]"
      assert_select "input#card_address_city[name=?]", "card[address_city]"
      assert_select "input#card_address_state[name=?]", "card[address_state]"
      assert_select "input#card_address_zip[name=?]", "card[address_zip]"
      assert_select "input#card_account[name=?]", "card[account]"
    end
  end
end
