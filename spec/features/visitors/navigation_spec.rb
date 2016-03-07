# Feature: Navigation links
#   As a visitor
#   I want to see navigation links
#   So I can find home, sign in, or sign up
feature 'Navigation links', :devise do
  # Scenario: View navigation links
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see navigation links
  #   Then I see "home," "sign in," and "sign up"
  scenario 'view navigation links' do
    visit root_path

    within 'nav' do
      expect(page).to have_content I18n.t('activerecord.attributes.pages.index')
      expect(page).to have_content \
        I18n.t('activerecord.models.production_category')
      expect(page).to have_content I18n.t('activerecord.models.production')
      expect(page).to have_content I18n.t('activerecord.models.article')
      expect(page).to have_content I18n.t('activerecord.models.news_item')
      expect(page).to have_content I18n.t('activerecord.attributes.pages.about')
      expect(page).to have_content \
        I18n.t('activerecord.attributes.pages.contacts')
      expect(page).to have_content \
        I18n.t('activerecord.attributes.pages.contacts')
    end
  end
end
