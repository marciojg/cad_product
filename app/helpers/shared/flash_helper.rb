module Shared::FlashHelper
  def flash_message
    messages = ""
    [:notice, :info, :warning, :error].each do |type|
      if flash[type]
        messages += content_tag(:div, flash[type], class: "alert alert-info")
      end
    end

    messages.html_safe
  end
end
