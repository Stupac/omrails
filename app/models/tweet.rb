class Tweet < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  acts_as_votable
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '600x600>'
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
