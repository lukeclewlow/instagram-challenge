class Post < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy

	has_attached_file :image, :styles => { :large => "700x700>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
end
