require 'spec_helper'

feature "index of items on homepage" do
	context "when user visits home page" do
		scenario "user sees list of all items" do
			create_item(title: 'Andulril', description: 'Great sword, slay enemies well', price: '$5678')
			expect(page).to have_content 'Andulril'
			create_item(title: 'Palantir', description: 'Creepy orb that whispers', price: '$5678')
			expect(page).to have_content 'Palantir'
			create_item(title: 'Aeglos', description: 'Amazing spear', price: '$5678')
			expect(page).to have_content 'Aeglos'
			visit '/'
			expect(page).to have_content 'Andulril'
			expect(page).to have_content 'Palantir'
			expect(page).to have_content 'Aeglos'



		end
	end
end
