class Pet < ApplicationRecord
  belongs_to :user
  validates :name, :age, :category, :diet, presence: true
end
