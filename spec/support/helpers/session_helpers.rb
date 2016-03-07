module Features
  module SessionHelpers
    def signin(email, password)
      visit new_user_session_path

      fill_in I18n.t('activerecord.attributes.user.email'), with: email
      fill_in I18n.t('activerecord.attributes.user.password'), with: password

      click_button I18n.t('devise.sessions.new.sign_in')
    end
  end
end
