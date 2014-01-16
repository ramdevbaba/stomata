require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  
  def teardown
    Contact.all.map(&:destroy)
  end
  
  test "create a contact" do
    matt = Contact.new(:first_name => 'Matt', :last_name => 'Aimonetti')
    matt.company_name = 'm|a agile'
    matt.save
    
    assert_equal 1, Contact.count
    assert_equal 'Matt', Contact.first.first_name
    assert_equal 'Aimonetti', Contact.first.last_name
  end
  
end