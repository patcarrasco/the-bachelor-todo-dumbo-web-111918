require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  name = nil
  data.each do |s, contestant|
    if s == season
      contestant.each do |k, v|
        if k['status'] == "Winner"
          name = k['name']
          break
        end
      end
    end
  end
  name.split(' ').first
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |s, p|
    p.each do |k, v|
      if k['occupation'] == occupation
        name = k['name']
        break
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |s, p|
    p.each do |k,v|
      if k['hometown'] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |s, p|
    p.each do |k, v|
      if k['hometown'] == hometown
        return k['occupation'] # to break loop early.... can also put break here and assign answer to a varibale
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |s, p|
    if s == season
      p.each do |k, v|
        ages << k["age"].to_f  # to_i, to_s, to_a
      end
    end
  end
  total_years = 0
  ages.each {|age| total_years += age}
  (total_years / ages.length).round
end
