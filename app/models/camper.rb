class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    validates :name, uniqueness: true
    validates :age, numericality: {less_than: 18, greater_than: 8}
end
