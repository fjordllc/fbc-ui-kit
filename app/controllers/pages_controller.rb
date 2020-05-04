class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when "index"
      "application"
    when "articles"
      "articles"
    when "welcome", "pp", "tos"
      "lp"
    when "login", "signup"
      "auth"
    else
      'application'
    end
  end
end
