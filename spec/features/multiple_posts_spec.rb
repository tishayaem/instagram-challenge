require 'rails_helper'

feature '/posts page displays a list of posts' do
  scenario 'displays created posts' do
    test_one = create(:post, caption: "Post one")
    test_two = create(:post, caption: "Post two")

    visit '/posts'
    expect(page).to have_content("Post one")
    expect(page).to have_content("Post two")
    expect(page).to have_css("img[src*='test']")
  end
end
