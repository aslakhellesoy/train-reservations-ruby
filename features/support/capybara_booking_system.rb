class CapybaraBookingSystem
  def initialize(capybara)
    @capybara = capybara
  end
  
  def configure(seats, booked)
    Capybara.app.settings.booking_system.configure(seats, booked)
  end
  
  def book_seats(seat_count)
    @capybara.visit '/'
    @capybara.fill_in 'Seats', with: seat_count
    @capybara.click_button 'Book'
    @capybara.page.has_content?('OK')
  end
end