require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each { |attribute, data|
    data.each { |characteristic, birds|
      birds.each { |name|
        pigeon_list[name] = {} if !pigeon_list.keys.include?(name)
        if !pigeon_list[name].keys.include?(attribute)
          pigeon_list[name][attribute] = [characteristic.to_s]
        elsif pigeon_list[name].keys.include?(attribute)
          pigeon_list[name][attribute] << characteristic.to_s
        #attribute => [characteristic.to_s] are what I need to add
        end
      }
    }
  }
  pigeon_list
end

def pigeon_data
  {:color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
  }
end
