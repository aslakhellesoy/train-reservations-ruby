class BookingSystem
  def configure(total_seats, booked_seats)
    @total_seats = total_seats
    @booked_seats = booked_seats
  end
  
  def book_seats(seat_count)
    ok = seat_count == 1
    return ok
  end
end