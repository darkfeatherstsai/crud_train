class CandidateConfirmEmailJob < ApplicationJob
  queue_as :default

  def perform(candidate)
    ContactMailer.say_hello_to(candidate).deliver_now
  end
end
