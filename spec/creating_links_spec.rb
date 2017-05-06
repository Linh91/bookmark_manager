feature 'submitting new links' do
  scenario 'new links form' do
    visit 'links/new'
    fill_in 'url', with: 'https://www.google.co.uk/'
    fill_in 'title', with: 'Google'
    click_button 'Create link'

    # expect to be redirected back to the links page
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
