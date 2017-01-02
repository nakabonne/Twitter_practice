class Note < ApplicationRecord
  validates :content,presence: true,length: {maximum: 140}
  validates :user_id,presence: true
end
