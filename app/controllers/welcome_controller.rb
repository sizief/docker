class WelcomeController < ApplicationController
  def index
    @name = 'ali on controller YAY!' #ENV['CREATOR']
  end
end
