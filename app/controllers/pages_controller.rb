class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    worker_table_user_ids = Worker.all.collect(&:user_id) # { |x| x.user_id }
    repeated_ids = []
    worker_table_user_ids.each do |user_id|
      repeated_ids << user_id if user_id == current_user.id
    end
    @times_ids_reapeted = repeated_ids.size
  end
end