
class ScreenIntro < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @base = element(:id, 'content')
    @button_intro_close = element(:id, 'close_intro')
    #class - android.widget.Button class can be used with more tahn one element as result incorrect logic
    #text - can be changed and as result incorrect value argument
    #ID - unique. The best method in this situation
    @intro_footer_image = element(:id,'intro_footer_image')
    #class - android.widget.ImageView class can be used with more tahn one element as result incorrect logic
    #text - NO
    #ID - unique. The best method in this situation
    @page_image = element(:id, 'page_image')
    #class - android.widget.ImageView class can be used with more tahn one element as result incorrect logic
    #text - NO
    #ID - unique. The best method in this situation
    @intro_text_header = element(:id, 'intro_text_header')
    #class - android.widget.TextView class can be used with more tahn one element as result incorrect logic
    #text - can be changed and as result incorrect value argument
    #ID - unique. The best method in this situation
    @intro_text_footer = element(:id, 'intro_text_footer')
    #class - android.widget.TextView class can be used with more tahn one element as result incorrect logic
    #text - can be changed and as result incorrect value argument
    #ID - unique. The best method in this situation
    @driver = driver
  end

  def visible?
    @driver.find_element(@base[:type], @base[:value])
    @driver.find_element(@button_intro_close[:type], @button_intro_close[:value])
    @driver.find_element(@intro_footer_image[:type], @intro_footer_image[:value])
    @driver.find_element(@page_image[:type], @page_image[:value])
    @driver.find_element(@intro_text_header[:type], @intro_text_header[:value])
    @driver.find_element(@intro_text_footer[:type], @intro_text_footer[:value])
  end
end
