class CapybaraBookingSystem
  def initialize(capybara)
    @capybara = capybara
  end
  
  def configure(total_seats, booked_seats)
    booking_system = Capybara.app.settings.booking_system
    booking_system.configure(total_seats, booked_seats)
  end
  
  def book_seats(seat_count)
    @capybara.visit '/'
    @capybara.fill_in 'Seats', with: seat_count
    @capybara.click_button 'Book'
    @capybara.page.has_content?('OK')
  end
end