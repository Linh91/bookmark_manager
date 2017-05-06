feature 'Viewing links' do
  scenario 'view a list of links' do
    Link.create(url: 'http://www.bbc.co.uk', title: 'bbc')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('bbc')
    end
  end
end
