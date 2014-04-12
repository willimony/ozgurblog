module ApplicationHelper
  def markdown text
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
        hard_wrap: true,
        filter_html: true,
        autolink: true,
        no_intraemphasis: true)

    renderer.render(text).html_safe
  end
end
