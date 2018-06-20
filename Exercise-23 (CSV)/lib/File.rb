require 'csv'
# this is class CsvData
class CsvData
  def read_file(file)
    file.group_by { |l| l[2] }
  end

  def save_into_file(hash)
    File.open('../../exercise23_Output.txt', 'w') do |line|
      hash.each do |a, e|
        e.length > 1 ? line.puts("#{a}s") : line.puts(a)
        e.each { |d| line.puts "#{d[0]} (EmpId:#{d[1]})" }
      end
    end
  end
end
