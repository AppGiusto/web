class Profile < ActiveRecord::Base

belongs_to :user
has_many :drinks
has_many :posts

has_attached_file :avatar, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
