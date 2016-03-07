require 'rails_helper'

feature 'Editing posts' do
  background do
    job = create(:post)

    visit '/posts'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    click_link 'Edit Post'
  end
  scenario 'Can edit a post' do
    fill_in 'Caption', with: "Edited text"
    click_button 'Update Post'
    expect(page).to have_content("Edited text")
  end
end
