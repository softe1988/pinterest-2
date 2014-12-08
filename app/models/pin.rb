class Pin < ActiveRecord::Base
	belongs_to :board
	belongs_to :user
# Connects carrierwave gem to page and allows up to upload pictures
mount_uploader :image, ImageUploader 
validates :name, :user_id, :board_id, presence: true 
end
