class ContactMailer < ApplicationMailer
  def say_hello_to(candidate)
    @candidate = candidate
    mail to:@candidate.email, subject:"你好！！"
  end
end
