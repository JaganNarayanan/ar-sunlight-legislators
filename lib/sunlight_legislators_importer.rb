require 'csv'
require_relative '../db/config'
class SunlightLegislatorsImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      Legislator.create(title: row[0], first_name: row[1], middle_name: row[2], last_name: row[3], party: row[6], state: row[7], in_office: row[9], gender: row[10], phone: row[11], fax: row[12], website: row[13], webform: row[14], twitter_id: row[21])
    end

      # row.each do |field, value|
      #   # TODO: begin
      #   Legislator.
      #
      #   # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
      #   # TODO: end
      # end


    #end
  end
end

# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
begin
  raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
  SunlightLegislatorsImporter.import(ARGV[0]) #filename is input as an ARGV - should be put in as:
rescue ArgumentError => e
  $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
rescue NotImplementedError => e
  $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
end
