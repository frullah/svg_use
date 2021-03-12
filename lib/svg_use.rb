# frozen_string_literal: true

require "active_support"
require_relative "svg_use/version"

module SvgUse
  def svg_use(name:, classes: nil, style: nil)
    content_tag(:svg, class: "icon #{classes}", style: style) do
      content_tag(:use, nil, href: "##{name}")
    end
  end
end

ActiveSupport.on_load :action_view do
  include SvgUse
end
