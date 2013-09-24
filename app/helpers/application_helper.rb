module ApplicationHelper
  def tooltip_for(text, &block)
  # http://www.kevinwilliamyoung.com/posts/14
  content = capture(&block)
  content_tag :div, class: "tooltip_wrapper" do
    content + content_tag(:div, content_tag(:div, "", class: "tooltip_triangle") + text, class: "helper_tooltip")
  end
end
	
end

