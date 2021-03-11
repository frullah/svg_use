# frozen_string_literal: true

require "active_support"
require_relative "svg_use/version"

module SvgUse
  def svg_use(name:, classes: nil, style: nil)
    tag.svg(class: "icon #{classes}", style: style) { tag.use(href: "##{name}") }
  end
end

ActiveSupport.on_load :action_view do
  include SvgUse
end
