require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  name_string = ""
  data[season].each do |contestant_array|
    if contestant_array["status"] == "Winner"
      name = contestant_array["name"]
      name_string = name.split[0]
    end
end
name_string
end

def get_contestant_name(data, occupation)
  # code here
  woman_with_occupation = " "
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
end
end
end
count
end

def get_occupation(data, hometown)
  new_array = []
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        new_array << contestant_hash["occupation"]
  # code here
end
end
end
return new_array[0]
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  age_total = 0
  data[season].each do |contestant_array|
    counter += contestant_array["age"].to_f
    age_total = counter/data[season].length
end
  return age_total.round
end
