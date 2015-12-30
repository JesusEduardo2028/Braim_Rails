module ApplicationHelper

  def controller_assets
    controller = params[:controller]
    if Rails.application.config.controller_with_assets.include? controller
      javascript_include_tag(controller) + stylesheet_link_tag(controller)
    end
  end
end
