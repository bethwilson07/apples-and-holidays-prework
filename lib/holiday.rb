require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  christmas_supplies = holiday_hash[:winter][:christmas]
  new_years_supplies = holiday_hash[:winter][:new_years]
  supplies = christmas_supplies + new_years_supplies
  supplies.flatten(1)
end

def all_supplies_in_holidays(holiday_hash)
  season_keys = 
  holiday_hash.each do |key|
    key.to_s.capitalize!
  end
  
  holiday_keys = 
  holiday_hash.each do |key, value|
    values = value.to_s.split("_")
      values.each do |x|
        x.capitalize!
      end
    end
  
  supplies =
  holiday_hash.each do |season, holiday|
    holiday.each do |supply|
      supply.join(" ")
    end
  end
  
  
      
  
  
end
  
    
    
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







