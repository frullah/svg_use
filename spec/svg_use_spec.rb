# frozen_string_literal: true

RSpec.describe SvgUse do
  include ActionView::Context
  include ActionView::Helpers::TagHelper
  include SvgUse

  it "has a version number" do
    expect(SvgUse::VERSION).not_to be nil
  end

  describe "#svg_use" do
    it "render svg without svg attribute" do
      page = Capybara.string(svg_use(name: "icon"))
      expect(page).to have_css("svg.icon:not([style]) > use[href='#icon']")
    end

    it "render svg with svg attributes" do
      page = Capybara.string(svg_use(name: "icon", classes: "another-class", style: "style"))
      expect(page).to have_css("svg.icon.another-class[style='style'] > use[href='#icon']")
    end
  end
end
