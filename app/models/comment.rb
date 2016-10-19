class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  
  validates :body, length: { minimum: 3, maximum: 500 }
end
