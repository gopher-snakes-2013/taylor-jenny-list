require 'spec_helper'

feature 'items can be edited' do
	context 'when user clicks edit link' do
		scenario 'user is taken to edit page' do
			create_item(title: 'Andulril', description: 'Great sword, slay enemies well', price: '$5678')
			expect(page).to have_content 'Andulril'
			click_on "Edit this item"
			expect(page).to have_content 'Editing your item'
		end
		scenario 'user can edit item using edit page' do
			create_item(title: 'Andulril', description: 'Great sword, slay enemies well', price: '$5678')
			expect(page).to have_content 'Andulril'
			click_on "Edit this item"
			expect(page).to have_content 'Editing your item'
			fill_in "item_title", with: "Andulril"
			fill_in "item_description", with: "Reduced for quick sale."
			fill_in "item_price", with: "$400"
			click_on "Edit Item"
			expect(page).to have_content "Reduced for quick sale."
		end
	end
end