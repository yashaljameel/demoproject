class CrudNotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notification_mailer.create_notification.subject
  #
  def create_notification(object)
    @object = object
    @object_count = object.class.count
    #@greeting = "Hi"
    mail to: "admin@example.com" , subject: " A new entry has been created."
    end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notification_mailer.update_notification.subject
  #
  def update_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notification_mailer.delete_notification.subject
  #
  def delete_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
