class Image < ApplicationRecord
  belongs_to :place
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :photo
  validates_attachment :photo,
                       content_type: { content_type: ["photo/jpeg", "photo/gif", "photo/png"] }
end
