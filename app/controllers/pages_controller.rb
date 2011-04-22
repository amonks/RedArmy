class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @topic = Topic.new
      @topiclist = Topic.all
    end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
end
