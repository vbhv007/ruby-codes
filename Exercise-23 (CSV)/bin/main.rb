require '../lib/File.rb'

ob = CsvData.new
file = CSV.read('../../exercise23CSV.csv')
hash = ob.read_file(file)
ob.save_into_file(hash.sort.to_h)
