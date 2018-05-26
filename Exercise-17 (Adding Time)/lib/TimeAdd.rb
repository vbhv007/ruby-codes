require 'time'
# this is class String
class Time
  def sum_time(time)
    if format_time?(self) && format_time?(time)
      total = self + time.sec + time.min * 60 + time.hour * 3600
      print_time(total, (total.day - day))
    else
      puts 'Invalid 24 hour time value'
      exit
    end
  end

  def format_time?(time)
    time.strftime('%T') =~ /^(2[0-3]|[01][0-9]):([0-5]?[0-9]):([0-5]?[0-9])$/
  end

  def print_time(total, day)
    day.zero? ? total.strftime('%T') : "#{day} day & #{total.strftime('%T')}"
  end
end
