require 'nokogiri'
require 'open-uri'
require 'csv'
require 'benchmark'

url = 'https://www.hospitalsafetygrade.org/all-hospitals'

# Measures the speed of execution
time = Benchmark.measure do
  doc = Nokogiri::HTML(URI.open(url))

  # Finds all links to hospitals
  hospital_links = doc.css('a[href^="http://www.hospitalsafetyscore.org/h/"]')

  # Gets hospital names
  hospital_names = hospital_links.map { |link| link.text }

  # Saves data to the .csv file
  CSV.open('HospitalParser/hospital_data.csv', 'w') do |csv|
    csv << ['ID', 'Hospital Name']
    hospital_names.each_with_index do |name, index|
      number = index + 1
      csv << [number, name]
      puts "#{number}. #{name} added to file."
    end
  end
end

puts "\n================================================\nData successfully saved at hospital_data.csv"
puts "Done in #{'%.2f' % time.real} sec"