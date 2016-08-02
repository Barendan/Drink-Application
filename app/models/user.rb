class User < ApplicationRecord
  has_attached_file :license_pic, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :license_pic, content_type: /\Aimage\/.*\Z/

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :driver_license, presence: true, uniqueness: true
  # not too sure about this v
  validates_attachment :license_pic,
	:content_type => { 
		:content_type => /image/, 
		:message => "License must be an image" },
	:size => { 
		:in => 0..5.megabytes, 
		:message => "License image must be less than 5 megabytes in size" }
  
  validates :address, presence: true
  validates :phone, presence: true, uniqueness: true, 
    format: { with: /(\+1 )?\(?[0-9]{3}\)? ?-?[0-9]{3}? ?-?[0-9]{4}/}
  # Does Devise already check format for email?
  # validates :email, presence: true, uniqueness: true,   
  #   format: { with: /^\w+@\w+\.[A-Za-z]+$/ }
  validates :birthday, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  has_many :product_orders
  has_many :orders, through: "product_orders"
  has_many :messages

end
