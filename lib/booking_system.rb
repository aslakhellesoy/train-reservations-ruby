class BookingSystem
  def configure(total_seats, booked_seats)
    @total_seats = total_seats
    @booked_seats = booked_seats
  end
  
  def book_seats(seat_count)
    max_total_seats = @total_seats * 0.7
    new_booked_seats = @booked_seats + seat_count 
    ok = new_booked_seats <= max_total_seats
    return ok
  end
end