if ENV['CAPYBARA']
  require 'capybara'
  require 'capybara/cucumber'
  require 'booking_app'
  require_relative './capybara_booking_system'
  Capybara.app = Sinatra::Application

  Before do
    @booking_system = CapybaraBookingSystem.new(self)
  end
else
  require 'booking_system'
  Before do
    @booking_system = BookingSystem.new
  end
end

if ENV['WEBDRIVER']
  Capybara.default_driver = :selenium
  Capybara.server = :puma, { Silent: true, Threads: '1:1' }
end
