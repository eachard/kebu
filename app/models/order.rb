class Order < ActiveRecord::Base
  belongs_to :shipping 
end
