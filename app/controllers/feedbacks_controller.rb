class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      # redirect_to :action
    else
      # render :new
    end
  end

  private
    def feedback_params
      params.require(:feedback).permit(:comment)
    end
end
