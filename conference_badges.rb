# Write your code here.
# Returns a formatted badge message for a given name
def badge_maker(name)
  "Hello, my name is #{name}."
end

# Returns an array of badge messages for a given list of attendees
def batch_badge_creator(attendees)
  attendees.map { |name| badge_maker(name) }
end

# Returns an array of welcome messages and room assignments for a given list of attendees
def assign_rooms(attendees)
  attendees.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

# Prints the list of badges and room assignments
def printer(attendees)
  badges = batch_badge_creator(attendees)
  room_assignments = assign_rooms(attendees)

  badges.each { |badge| puts badge }
  room_assignments.each { |assignment| puts assignment }
end
