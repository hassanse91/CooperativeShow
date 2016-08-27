class Cooperative < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
  	has_attached_file :image, styles: { medium: "300x400>", thumb: "240x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
