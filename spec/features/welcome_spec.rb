require 'rails_helper'

feature "Welcomes", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  scenario 'bem vindo' do
    visit('/')
    expect(page).to have_content('Welcome')
  end

end
