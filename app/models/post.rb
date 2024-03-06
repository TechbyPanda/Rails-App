class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3 }
    validates :body, presence: true
  
    scope :published, -> { where(published: true) }
  end
  