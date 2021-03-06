class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" } , :default_url => "https://c4.staticflickr.com/4/3425/13078131074_011f3f18bb_k.jpg"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
	#Added validation to pins
	validates :image, presence: true
	validates :description, presence: true

end
