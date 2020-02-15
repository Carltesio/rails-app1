require "rails_helper"

feature 'List articles on index page' do
  context 'with articles in db' do
    before do

      create(:article, title: 'A breaking news item', content: 'Some breaking action')
      create(:article, title: 'Learn Rails 5', content: 'Build awesome rails applications')

      visit root_path
    end

    it 'displays first article title' do
      expect(page).to have_content 'A breaking news item'
    end

    it 'displays the second article'do
      expect(page).to have_content 'Learn Rails 5'
    end
  end
end