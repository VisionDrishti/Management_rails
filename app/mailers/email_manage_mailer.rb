class EmailManageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_manage_mailer.create_manage.subject
  #
  def create_manage(object)
    @object = object 
    @object_count = object.class.count

    mail to: "drishtiverma31@gmail.com",subject: "new entry for #{object.class} has been created  "
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_manage_mailer.update_manage.subject
  #
  def update_manage
 

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_manage_mailer.destroy_manage.subject
  #
  def destroy_manage
   
  end
end
