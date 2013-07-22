require 'test_helper'

class ListMailerTest < ActionMailer::TestCase
  test "shopping_list" do
    mail = ListMailer.shopping_list
    assert_equal "Shopping list", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
