class Creation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title, :category_id, :cost, :material, :tool, :description, :trigger, :image  
  end
end
