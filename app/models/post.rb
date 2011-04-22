# == Schema Information
# Schema version: 20110421081320
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  content    :text
#  user_id    :integer
#  topic_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :topic
  belongs_to :user
  
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :topic_id, :presence => true
  
  default_scope :order => 'posts.created_at DESC'
end
