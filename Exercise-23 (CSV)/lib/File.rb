require 'csv'
# this is class CsvData
class CsvData
  def read_file(file)
    hash = Hash.new([])
    file.each do |l|
       hash[l[2]] += Array("#{l[0]} (EmpId:#{l[1]})")
    end
    hash
  end

  def save_into_file(hash)
    File.open('../../exercise23_Output.txt', 'w') do |line|
      hash.each do |a, e|
        e.length > 1 ? line.puts("#{a}s") : line.puts(a)
        e.each { |d| line.puts d }
        line.puts
      end
    end
  end
end
