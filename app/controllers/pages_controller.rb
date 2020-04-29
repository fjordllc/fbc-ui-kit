class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when 'index'
      'application'
    when 'articles'
      'articles'
    when 'welcome'
      'lp'
    when 'login'
      'login'
    else
      'application'
    end
  end
end
