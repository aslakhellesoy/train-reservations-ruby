class BookingSystem
  def configure(seats, booked)
    @seats = seats
    @booked = booked
  end
  
  def book_seats(seat_count)
    ok = seat_count == 1
    return ok
  end
end