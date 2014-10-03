require 'rails_helper'

feature 'User signs up' do
  before do
    visit 'users/sign_up'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
  end

  scenario 'with valid information' do
    fill_in 'Email', with: 'example_user@example.com'
    click_on 'Sign up'
    expect(page).to have_content 'bank account information'
  end

  scenario 'with missing information' do
    click_on 'Sign up'
    expect(page).to have_content 'error'
  end
end
