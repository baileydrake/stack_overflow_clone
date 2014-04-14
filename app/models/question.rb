class Question < ActiveRecord::Base
  validates_presence_of :question
  has_many :responses
end
