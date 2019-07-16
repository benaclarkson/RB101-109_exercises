# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes and seconds. You should use a degree symbol (°) to
# represent degrees, a single quote (') to represent minutes, and a double
# quote (") to represent seconds. A degree has 60 minutes, while a minute
# has 60 seconds.

# Input: angle
# Output: A string showing degrees, minutes, and seconds

# angle.to_s.split('.') to break up the numbers on either side of the decimal.
# Iterate through the new array
# The first value in the array is the degrees value. It goes first in the new string
# Then, we take the second element in the array, see if it returns nil
# If not, then we turn that into a float and multiply it by 60
# Then, we convert that to a string and split it on the decimal.
# The same procedure happens a smaller scale when it comes to the seconds.

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  degrees %= 360
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# My failed attempt
# def dms(angle)
#   ang_arr = angle.to_s.split('.')
#   degrees = ang_arr[0].to_i
#   if ang_arr[1] != nil
#     min_arr = (("0." + ang_arr[1]).to_f * MINUTES_PER_DEGREE).to_s.split('.')
#     minutes = min_arr[0]
#     if min_arr[1] != nil
#       sec = ("0." + min_arr[1]).to_f * SECONDS_PER_MINUTE
#     end
#   else
#     minutes = "00"
#     sec = "00"
#   end
#
#   "%(#{degrees.to_s + DEGREE}#{minutes.to_s}\'#{sec}\")"
# end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
