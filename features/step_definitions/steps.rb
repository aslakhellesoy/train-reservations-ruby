Given("the following train:") do |trains|
  trains.hashes.each do |coach_info|
    @booking_system.configure(
      coach_info['seats'].to_i,
      coach_info['booked'].to_i,
    )
  end
end

When("Jane books {int} seat(s)") do |seat_count|
  @booking_status = @booking_system.book_seats(seat_count)
end

Then("her booking should be rejected") do
  expect(@booking_status).to be(false)
end

Then("her booking should be accepted") do
  expect(@booking_status).to be(true)
end
