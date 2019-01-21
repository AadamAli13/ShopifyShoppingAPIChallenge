class Order < ApplicationRecord
	validates :first_name, presence: true
	validates :total, presence: true
end
