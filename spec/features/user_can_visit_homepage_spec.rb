require 'spec_helper'

feature "visit home page" do
	context "when not logged in" do
		scenario "they see the homepage" do
			visit '/'
			expect(page).to have_content "Welcome to ShireList"
		end
	end
end
