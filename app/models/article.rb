class Article < ActiveRecord::Base
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title,  length: { minimum: 5, maximum: 120 }
  validates :title, uniqueness: true, uniqueness: { message: "This article title has already been used. Please create an original title."}
  validates :body, length: { minimum: 15 }
end
