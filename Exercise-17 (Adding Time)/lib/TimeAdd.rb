require 'time'
# this is class String
class Time
  TIME = /^(2[0-3]|[01][0-9]|[01]):([0-5]?[0-9]):([0-5]?[0-9])$/

  def sum_time(time1, time2)
    time1 =~ TIME && time2 =~ TIME ? total = Time.add(time1, time2) : puts('Invalid 24 hour time value')
    print_time(total, (total.day - day))
  end

  def self.add(time1, time2)
    t = parse(time2)
    parse(time1) + t.sec + t.min * 60 + t.hour * 3600
  end

  def print_time(total, day)
    day.zero? ? total.strftime('%T') : "#{day} day & #{total.strftime('%T')}"
  end
end
