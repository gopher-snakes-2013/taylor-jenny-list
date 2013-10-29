class ItemsController < ApplicationController
	require 'SecureRandom'

	def index
		@item = Item.new
	end

	def new
		@item = Item.new # when a form is shown in view, a new Ruby object is created.
	end

	def create
		@item = Item.create(params[:item])
		item_key = SecureRandom.urlsafe_base64
		@item[:item_key] = item_key

		redirect_to item_path(@item.id) if @item.save
	end

	def show
		@item = Item.find(params[:id])
		@items = Item.all
		p @item
	end
end
