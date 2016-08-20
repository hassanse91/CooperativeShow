class Cooperative < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '240x300#',
    medium: '300x400>'
  }
 	
 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
