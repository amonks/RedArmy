class TopicsController < ApplicationController
  before_filter :authenticate
  
  def create
    @topic = current_user.topics.build(params[:topic])
    if @topic.save
      flash[:success] = "Topic created"
      redirect_to root_path
    else
      @topiclist = []
      render 'pages/home'
    end
  end
  
  def destroy
  end
end