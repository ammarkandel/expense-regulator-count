require 'spec_helper'

RSpec.describe 'Groups Views', type: :feature do
  before(:each) do
    u1 = User.new({ email: 'test1@s.com', name: 'Test1', password: '123456', password_confirmation: '123456' })
    u1.save
    g1 = Group.new(name: 'testgroup 1', icon: 'fa-handshake', user_id: 1)
    g1.save
    visit '/'
    fill_in 'Email', with: 'test1@s.com'
    fill_in 'Password', with: '123456'
    click_button('Log in')
    expect(page).to have_content('Wellcome')
  end

  scenario 'add new group' do
    find('a', text: 'Groups').click
    expect(page).to have_content('Your Groups')
  end
end
