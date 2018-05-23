# this is class CsvData
class CsvData
  def reading_csv
    hash = Hash.new([])
    file = File.open('../../exercise23CSV.csv', 'r')
    file.each do |line|
      l = line.chomp.split(',')
      hash[l[2]] += Array("#{l[0]} (EmpId:#{l[1]})")
    end
    save_into_file(hash.sort.to_h)
    file.close
  end

  def save_into_file(hash)
    File.open('../../exercise23_Output.txt', 'w') do |line|
      hash.each do |a, e|
        a = e.length > 1 ? "#{a}s" : a
        line.puts a
        e.each { |d| line.puts d }
        line.puts
      end
    end
  end
end
