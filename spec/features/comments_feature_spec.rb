require 'rails_helper'

feature 'commenting' do
	before {Post.create name: 'Pic'}

	scenario 'allows users to leave a comment' do
		sign_up("a@a.com")
		find('.index-image-link').click
		click_link 'Comment'
		fill_in "Thoughts", with: "Nice"
		click_button 'Leave Comment'
		expect(page).to have_content "Nice"
	end

	scenario 'comment is deleted if post is deleted' do
		sign_up("a@a.com")
		find('.index-image-link').click
		click_link 'Comment'
		fill_in "Thoughts", with: "Nice"
		expect(page).to have_content "Nice"
		click_button 'Leave Comment'
		visit '/posts'
		find('.index-image-link').click
		click_link 'Delete'
		expect(page).not_to have_content "Nice"
	end

end