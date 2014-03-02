class Shipping < ActiveRecord::Base

  validates_presence_of :fullname, :phone_number, :address, :zipcode, :extra_informations, :city
  has_many :orders
end
