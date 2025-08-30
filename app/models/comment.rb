class Comment < ApplicationRecord
  validates :username, presence: true
  validates :body, presence: true
  validates :articleid, presence: true
end
