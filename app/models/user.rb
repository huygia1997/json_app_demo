class User < ApplicationRecord
	before_save {email.downcase!}
	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, length: {maximum: 250},
										uniqueness: {case_sensitive: false}
end
