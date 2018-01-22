class Post < ApplicationRecord

	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


	def self.target_for_link
		if self.url == nil
			puts "_blank"
		else
			puts ""
		end
	end


end
