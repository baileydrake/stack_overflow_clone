class Question < ActiveRecord::Base
  validates_presence_of :question
  belongs_to :user
  has_many :responses
end
