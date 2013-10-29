require 'spec_helper'

feature "user can create new item" do
	context "when user visits homepage" do
		scenario "user creates new item" do
			visit '/'
			fill_in "item_title", with: "Palantir"
			fill_in "item_description", with: "Glowing orb that tells the future"
			fill_in "item_price", with: "$50000"
			click_on "add item"
			expect(page).to have_content("Palantir")
		end
	end
end
