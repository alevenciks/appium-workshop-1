class ScreenSelectSubCategory < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @rows = element(:id, 'main_row_text')
    @driver = driver
  end

  def visible?(title)
    wait { @driver.text(title).displayed? }
  end

  def select_sub_category(sub_name)
    @driver.scroll_to(sub_name).click
  end
end
