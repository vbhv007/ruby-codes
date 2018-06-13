require 'time'
# this is class String
class Time
  TIME = /^(2[0-3]|[01][0-9]|[0]):([0-5]?[0-9]):([0-5]?[0-9])$/

  def multiple_time(times)
    if times.all? { |t| t =~ TIME }
      times = times.map { |t| Time.parse(t) }
      total = sum_time(times)
      print_time(total, (total.day - times[0].day))
    else
      p 'Invalid 24-hour time value'
    end
  end

  def sum_time(times)
    times.inject do |a, e|
      a + e.sec + e.min * 60 + e.hour * 3600
    end
  end

  def print_time(tot, day)
    day.zero? ? p(tot.strftime('%T')) : p("#{day} day & #{tot.strftime('%T')}")
  end
end
