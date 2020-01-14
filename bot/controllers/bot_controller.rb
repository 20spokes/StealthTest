class BotController < Stealth::Controller

  helper :all

  def route
    if current_session.present? and current_message.message != 'restart'
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_offer_story'
    end
  end

end
