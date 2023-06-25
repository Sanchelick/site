class Product < ApplicationRecord
	has_attached_file :image, styles: { medium: "250x200#", thumb: "100x100>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
