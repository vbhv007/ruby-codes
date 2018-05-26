require 'time'
# this is class String
class Time
  def sum_time(times)
    times.inject do |a, e|
      a + e.sec + e.min * 60 + e.hour * 3600
    end
  end

  def format_time?(time)
    time =~ /^(2[0-3]|[01][0-9]|[0]):([0-5]?[0-9]):([0-5]?[0-9])$/
  end

  def print_time(tot, day)
    day.zero? ? p(tot.strftime('%T')) : p("#{day} day & #{tot.strftime('%T')}")
  end

  def multiple_time(times)
    if times.all? { |t| format_time?(t) }
      times = times.map { |t| Time.parse(t) }
      total = sum_time(times)
      print_time(total, (total.day - times[0].day))
    else
      p 'Invalid 24-hour time value'
      exit
    end
  end
end
