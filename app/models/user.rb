class User < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :driver_license, presence: true, uniqueness: true
  # not too sure about this v
  validates_attachment :avatar,
	:content_type => { 
		:content_type => /image/, 
		:message => "License must be an image" },
	:size => { 
		:in => 0..5.megabytes, 
		:message => "License image must be less than 5 megabytes in size" }
  
  validates :address, presence: true
  validates :phone, presence: true, uniqueness: true
  validates :birthday, presence: true

  has_many :orders
  has_many :messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
