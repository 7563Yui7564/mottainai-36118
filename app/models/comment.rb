class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :creation

  validates :text, presence: true
end
