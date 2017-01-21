class Screens
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end
  def screen_intro
    @screen_intro_welcome ||= ScreenIntro.new @driver
    @screen_intro_welcome
  end

  def screen_create_filter
    @screen_create_filter ||= ScreenCreateFilter.new @driver
    @screen_create_filter
  end
end
