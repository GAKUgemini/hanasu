class Article < ApplicationRecord
  validates :text, length: { maximum: 25 }
end
