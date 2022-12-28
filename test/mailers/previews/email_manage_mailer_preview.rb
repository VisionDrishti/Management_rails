# Preview all emails at http://localhost:3000/rails/mailers/email_manage_mailer
class EmailManageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/email_manage_mailer/create_manage
  def create_manage
    EmailManageMailer.create_manage
  end

  # Preview this email at http://localhost:3000/rails/mailers/email_manage_mailer/update_manage
  def update_manage
    EmailManageMailer.update_manage
  end

  # Preview this email at http://localhost:3000/rails/mailers/email_manage_mailer/destroy_manage
  def destroy_manage
    EmailManageMailer.destroy_manage
  end

end
