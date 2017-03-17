# --- 5.4 NESTED DATA STRUCTURES ---

# Create a Nested Data Structure and write driver code to access the hashes/arrays and add/remove info.
classroom = {
  period_one: {
      class_name: 'Science Class',
      seat_info: {
        total_seats: 20,
        seats_available: 4
      },
      supplies: [
            "Pencils",
            "Pens",
            "Paper",
            "Scissors"
      ]
  },
  period_two: {
      class_name: 'History Class',
      seat_info: {
        total_seats: 25,
        seats_available: 3
      },
      supplies: [
            "History Book",
            "Notebook",
            "World Map",
            "Projector"
      ]
  },
  period_three: {
    class_name: 'English Class',
    seat_info: {
      total_seats: 30,
      seats_available: 6
    },
    supplies: [
            "Writing Journal",
            "Pencils",
            "Literature Book"
    ]
  },
}
# Print the name of the class for Period 1
puts classroom[:period_one][:class_name]
puts "----------------"
# Print the seats available for period three class
puts classroom[:period_three][:seat_info][:seats_available]
puts "----------------"
# Find out what is the 2nd item on supplies list on period 3 and print the result
puts classroom[:period_three][:supplies][1]
puts "----------------"
# Add another supply to the list and print the result
puts classroom[:period_two][:supplies].push("Video Tape")
puts "----------------"
# Update the name of period 3 and print the results
puts classroom[:period_three][:class_name] = "Art Class"
puts "----------------"
# Verify if period 3's class was changed by printing the section
puts classroom[:period_three][:class_name]
