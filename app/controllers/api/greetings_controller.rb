class Api::GreetingsController < ApplicationController
  def index
    greetings = Greeting.all
    render json: greetings
  end

  def random_greeting
    random_message = Greeting.order('RANDOM()').first
    render json: { greeting: random_message.content }
  end
end
