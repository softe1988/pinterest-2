class Board < ActiveRecord::Base
	belongs_to :user
	has_many :pins
	mount_uploader :image, ImageUploader 
	validates :name, :user_id, presence: true 
end
