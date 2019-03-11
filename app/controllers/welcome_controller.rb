class WelcomeController < ApplicationController
  def index
    @name = ENV['NAME']
  end
end
