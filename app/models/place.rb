class Place < ApplicationRecord
  belongs_to :category
  has_many :images
  # belongs_to :user
end
