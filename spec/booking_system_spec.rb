require 'booking_system'

describe BookingSystem do
  it 'books within 70%' do
    bs = BookingSystem.new
    bs.configure(10, 4)
    expect(bs.book_seats(3)).to be(true)
  end

  it 'does not book beyond 70%' do
    bs = BookingSystem.new
    bs.configure(10, 4)
    expect(bs.book_seats(8)).to be(false)
  end
end