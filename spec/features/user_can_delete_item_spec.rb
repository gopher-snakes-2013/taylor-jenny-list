require 'spec_helper'

feature 'items can be deleted' do
	context 'when user clicks delete link' do
		scenario 'user is taken to listing confirmation page' do
			create_item(title: 'Andulril', description: 'Great sword, slay enemies well', price: '$5678')
			expect(page).to have_content 'Andulril'
			click_on "Delete this item"
			expect(page).not_to have_content 'Andulril'
		end
	end
end