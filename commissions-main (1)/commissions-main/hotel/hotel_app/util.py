from datetime import datetime, timedelta
from hotel_app.models import Room, RoomBooking, User

def process_dates_string(user_id, room_id, dates_string):
    date_list = dates_string.split("|")
    date_list.pop()
    print(date_list)

    bookings = []
    current_group = [datetime.strptime(date_list[0], "%Y/%m/%d")]

    for i in range(0, len(date_list)):
        print(date_list[i])
        current_date = datetime.strptime(date_list[i], "%Y/%m/%d")
        previous_date = current_group[-1] + timedelta(days=1)

        if current_date == previous_date:
            current_group.append(current_date)
        else:
            # Process the current group of consecutive dates
            start_date = current_group[0]
            end_date = current_group[-1] + timedelta(days=1)

            # Create a booking for the current group
            room_booking = RoomBooking.objects.create(
                room_id=room_id,
                user_id=user_id,
                start_date=start_date.replace(hour=13, minute=0, second=0, microsecond=0),
                end_date=end_date.replace(hour=13, minute=0, second=0, microsecond=0)
            )
            room_booking.save()

            # Add the booking to the list
            bookings.append(room_booking.booking_id)

            # Reset the current group for the next consecutive dates
            current_group = [current_date]

    # Process the last group if it exists
    if current_group:
        start_date = current_group[0]
        end_date = current_group[-1] + timedelta(days=1)

        # Create a booking for the last group
        room_booking = RoomBooking.objects.create(
            room_id=room_id,
            user_id=user_id,
            start_date=start_date.replace(hour=13, minute=0, second=0, microsecond=0),
            end_date=end_date.replace(hour=13, minute=0, second=0, microsecond=0)
        )
        room_booking.save()

        # Add the booking to the list
        bookings.append(room_booking.booking_id)

    return bookings
