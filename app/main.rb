require_relative "../db/config"
# Query 1: Given any state, print out senators sorted by last name. Then, print representatives sorted by last name
#
# def list(state)
#   puts "Senators: "
#   senator = Legislator.where("state = ? AND title = ?", state, "Sen")
#   senator = senator.order('last_name ASC')
#   senator.each_with_index do |x, index|
#     puts "#{index+1}.) #{x.first_name} #{x.middle_name} #{x.last_name}, #{x.party}"
#   end
#   puts "Representatives: "
#   representative = Legislator.where("state = ? AND title = ?", state, "Rep")
#   representative = representative.order('last_name ASC')
#   representative.each_with_index do |x, index|
#     puts "#{index+1}.) #{x.first_name} #{x.middle_name} #{x.last_name}, #{x.party}"
#   end
# end
#
# list("CA")

# Query 2: Given gender, print number and percentage of reps of that gender, provided they are active in office

# def gender_stat(gender)
#   puts "#{gender} Senators: "
#   senator = Legislator.where("gender = ? AND title = ? AND in_office = ?", gender, "Sen", "1")
#   puts senator = senator.size
#   # count = (senator.to_f/Legislator.all.size.to_f)*100
#   # puts count.round(2).to_s + "%"
#   puts "#{gender} Representatives: "
#   representatives = Legislator.where("gender = ? AND title = ? AND in_office = ?", gender, "Rep", "1")
#   puts representatives = representatives.size
#   count = ((senator.to_f+representatives.to_f)/Legislator.all.size.to_f)*100
#   # puts count.round(2).to_s + "%"
# end
# gender_stat("M")
# gender_stat("F")

# Query 3: Print out list of states along with number of active sens and reps in each, in descending order.

# def calc
#   states = Legislator.all.pluck(:state).uniq
#   states.each do |state|
#     puts "State: #{state}, Senators: #{Legislator.all.where(state: state, title: "Sen", in_office: "1").count}, Representatives: #{Legislator.all.where(state: state, title: "Rep", in_office: "1").count}"
#   end
# end

# calc

# Query 4: Count total num of senators and reps regardless of active or not

# def calc_total
#   puts "Senators total: "
#   puts Legislator.all.where(title: "Sen").count
#   puts "Representatives total: "
#   puts Legislator.all.where(title: "Rep").count
# end
# calc_total

# Query 5: Delete non active sens and reps
# def delete_not_active
#   Legislator.all.where(in_office: "0").destroy_all
#   puts Legislator.all.where(title: "Sen").count
#   puts Legislator.all.where(title: "Rep").count
# end
#
# delete_not_active
