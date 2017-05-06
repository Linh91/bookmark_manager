feature 'submitting new links' do
  scenario 'new links form' do
    visit 'links/new'
    fill_in 'links'. with: 'https://www.google.co.uk/'
    click_button 'Create link'

    expect(page).to have_content('https://www.google.co.uk/')
    end
  end
end
