class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


belongs_to :profile
has_many :posts
has_many :drinks
has_many :relationships
has_many :friends, through: :relationships
has_many :likes

has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "friend_id"
has_many :inverse_friends, :through => :inverse_relationships, :source => :user


  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/



end
