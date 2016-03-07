require 'rails_helper'

# Feature: Password reset
#   As a user
#   I want to reset password
feature 'Password reset', :devise do
  # Scenario: User opens sign in page and view reset password link
  #   Given I exist as a user
  #   When I visit sign in page
  #   Then I see forgot password link
  scenario 'user open sign in page and see reset password link' do
    visit new_user_session_path

    expect(page).to have_content \
      I18n.t('devise.shared.links.forgot_your_password')
  end

  # Scenario: User opens forgot_your_password page and view email form
  #   Given I exist as a user
  #   When I visit forgot_your_password page
  #   Then I see email and submit button
  scenario 'user open forgot password page and see form with button' do
    visit new_user_password_path

    expect(page).to have_css('form#new_user')
    expect(page).to have_css('#user_email')
    expect(page).to have_selector('input[type=submit]')
  end

  # Scenario: User restores password
  #   Given I exist as a user
  #   When I visit forgot_your_password page
  #   Then I see send email and click submit button
  scenario 'user restores password' do
    user = create :user

    visit new_user_password_path

    within 'form#new_user' do
      fill_in I18n.t('activerecord.attributes.user.email'), with: user.email

      click_button \
        I18n.t('devise.passwords.new.send_me_reset_password_instructions')
    end

    expect(page).to have_content I18n.t('devise.passwords.send_instructions')
  end
end
