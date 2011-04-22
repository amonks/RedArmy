# == Schema Information
# Schema version: 20110421081320
#
# Table name: topics
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Topic < ActiveRecord::Base
  attr_accessible :title
  
  belongs_to :user
  has_many :posts
  
  def topiclist
    Topic.all
  end
  
  default_scope :order => 'topics.created_at DESC'
end
