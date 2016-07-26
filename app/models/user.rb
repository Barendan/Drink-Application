class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :driver_license, presence: true, uniqueness: true
  validates :license_url, presence: true
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
