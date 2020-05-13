class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when "index"
      "application"
    when "welcome", "pp", "tos", "articles", "article", "practices"
      "lp"
    when "login", "signup", "new_password"
      "auth"
    else
      'application'
    end
  end
end
