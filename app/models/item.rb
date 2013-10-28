class Item < ActiveRecord::Base
	attr_accessible :title, :description, :price, :item_key

end