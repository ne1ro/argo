module Features
  module SessionHelpers
    def signin(email, password)
      visit new_user_session_path

      fill_in I18n.t('Email'), with: email
      fill_in I18n.t('Password'), with: password

      click_button I18n.t('Sign in')
    end
  end
end
