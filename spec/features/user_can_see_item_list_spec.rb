require 'spec_helper'

feature "index of items on homepage" do
	context "when user visits home page" do
		scenario "user sees list of all items" do
			create_item(title: 'Andulril', description: 'Great sword, slay enemies well', price: '$5678')
			expect(page).to have_content 'Andulril'


		end
	end
end
