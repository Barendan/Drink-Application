class User < ApplicationRecord
  has_many :orders
  has_many :messages

  belongs_to :order
  belongs_to :message

  # has_and_belongs_to_many :orders
  # has_and_belongs_to_many :messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
