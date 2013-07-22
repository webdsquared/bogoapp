class ListMailer < ActionMailer::Base
  default from: "lists@bogofy.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.list_mailer.shopping_list.subject
  #
  def shopping_list(list)
    mail to: current_user.email, subject: "Shopping List"
  end
end
