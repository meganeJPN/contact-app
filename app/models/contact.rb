class Contact < ApplicationRecord
  validates :name,presence:true
  validates :email,presence: true,format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :content,presence: true,length: {maximum: 140}
end
