class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when "index"
      "application"
    when "welcome"
      "lp"
    when "pp", "tos", "articles", "article", "practices", "faq", "coc", "contact", "typography_test"
      "static"
    when "login", "signup", "new_password"
      "auth"
    when "blog", "blog/index", "blog/show"
      "blog"
    else
      'application'
    end
  end
end
