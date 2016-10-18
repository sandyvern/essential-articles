class Article < ActiveRecord::Base
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title, :body, presence: true
  validates :title, uniqueness: true, uniqueness: { message: "This article title has already been used. Please create an original title."}
  validates :body, length: { minimum: 15 }
end
