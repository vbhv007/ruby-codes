require 'time'
# this is class String
class Time
  def sum_time(time1, time2)
    if format_time?(time1) && format_time?(time2)
      t1 = Time.parse(time1)
      t2 = Time.parse(time2)
      total = t1 + t2.sec + t2.min * 60 + t2.hour * 3600
      print_time(total, (total.day - day))
    else
      puts 'Invalid 24 hour time value'
      exit
    end
  end

  def format_time?(time)
    time =~ /^(2[0-3]|[01][0-9]|[01]):([0-5]?[0-9]):([0-5]?[0-9])$/
  end

  def print_time(total, day)
    day.zero? ? total.strftime('%T') : "#{day} day & #{total.strftime('%T')}"
  end
end
