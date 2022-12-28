require "test_helper"

class EmailManageMailerTest < ActionMailer::TestCase
  test "create_manage" do
    mail = EmailManageMailer.create_manage
    assert_equal "Create manage", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "update_manage" do
    mail = EmailManageMailer.update_manage
    assert_equal "Update manage", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "destroy_manage" do
    mail = EmailManageMailer.destroy_manage
    assert_equal "Destroy manage", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
