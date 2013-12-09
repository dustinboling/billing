require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :stripe_id => "MyString",
      :name => "MyString",
      :email => "MyString",
      :default_card => "MyString",
      :delinquent => false
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", accounts_path, "post" do
      assert_select "input#account_stripe_id[name=?]", "account[stripe_id]"
      assert_select "input#account_name[name=?]", "account[name]"
      assert_select "input#account_email[name=?]", "account[email]"
      assert_select "input#account_default_card[name=?]", "account[default_card]"
      assert_select "input#account_delinquent[name=?]", "account[delinquent]"
    end
  end
end
