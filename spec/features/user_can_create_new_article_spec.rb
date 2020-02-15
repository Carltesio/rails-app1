require "rails_helper"


feature 'User can create articles' do
    before do
      visit root_path
      #click_on "New Article"
    end


    it'displays the new article page'do
    expect(page).to eq new_article_path
    end
  
    # context "Successfully create an article [Happy Path]" do
    #     before do
    #     fill_in "Title", with: "Happy holidays"
    #     fill_in "Content", with: "Buy your gifts now!"
    #     click_on "Create Article"
    #     end
    # end

    # it 'User should be on article show page' do
    #     article = Article.find_by(title: 'Happy holidays')
    #     expect(current_path).to eq new_article_path(article)
    #   end
    

end