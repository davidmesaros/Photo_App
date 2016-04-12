class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :payment
  accepts_nested_attributes_for :payment # sign up user in the new form is saved as with the payment confrirmation is save in one hit eg after valid credit card is added.
end
