class ItemsController < ApplicationController
	require 'SecureRandom'

	def index
		@item = Item.new
		@items = Item.all
	end

	def create
		@item = Item.create(params[:item])
		item_key = SecureRandom.urlsafe_base64
		@item[:item_key] = item_key

		redirect_to item_path(@item.id) if @item.save
	end

	def show
		@item = Item.find(params[:id])
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		Item.update(params[:id], params[:item])
		@item = Item.find(params[:id])
	end
end
