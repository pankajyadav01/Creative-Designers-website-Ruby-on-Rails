class Product < ActiveRecord::Base
	belongs_to :user
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	has_many :comments, dependent: :destroy

	has_attached_file :img_url, styles: { large: "800x600>", medium: "320x200>", thumb: "100x80#" }, validate_media_type: false
  	validates_attachment_content_type :img_url, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	def self.tagged_with(name)
		Tag.find_by!(name: name).products
	end

	def all_tags=(names)
		# names="music, spotify"
		self.tags = names.split(',').map do |name|
			Tag.where(name: name).first_or_create!
		end
	end
	def all_tags
		tags.map(&:name).join(", ")
	end
end
