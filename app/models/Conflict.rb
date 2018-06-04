class Conflict < ApplicationRecord
	has_many :customers
	has_many :businesses
end
