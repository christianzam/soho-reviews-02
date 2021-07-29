class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    #@a = Worker.where(name: 'papaya').first
    # @a = Worker.first.name
    # @a = Worker.all.find(1)
  end
end
