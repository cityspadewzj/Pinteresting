class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" } , :default_url => "https://c4.staticflickr.com/4/3425/13078131074_011f3f18bb_k.jpg"
end
