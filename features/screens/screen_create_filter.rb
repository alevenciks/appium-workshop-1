class ScreenCreateFilter < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @rows = element(:id, 'main_row_text')
    @driver = driver
  end

  def visible?
    wait { @driver.find_element(@rows[:type], @rows[:value]).first.displayed? }
  end

  def select_row(category_name)
    @rows.each do |row|
      if row.text == category_name
        row.click
        break;
      end
    end
  end
end