class WelcomeController < ApplicationController
  def index
  	@problems = Problem.where(finished = false).order('created_at').limit(10)
  end

  def wip
  end
  
end
