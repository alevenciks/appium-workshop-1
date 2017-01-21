class TestAddFiter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def select_category(category)
    @screens.screen_create_filter.visible?
    @screens.screen_create_filter.select_row category
  end
end
