class Profile < ActiveRecord::Base

	mount_uploader :image, ImageUploader
	belongs_to :team

end
