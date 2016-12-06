# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# return candidate by id - return nil if not found
def find(id)
  if @candidates.find{ |candidate| i[:id] == id}
    return @candidates.find{ |candidate| i[:id] == id}
  else
    return nil
  end
end

# check to see if experience criterion is met
def experienced?(candidate)
  return candidate[:years_of_experience] >= 2
end

# check if candidate knows all give languages
def knows_all_these_lngs?(candidate, lng_arr)
  return (lng_arr - candidate[:languages]).empty?
end

# check if candidate knows one of the given languages
def knows_of_these_lngs?(candidate, lng_arr)
  lng_arr.each {|lng| return true if candidate[:languages].include? lng}
  return false
end

# return all qualified candidates
def qualified_candidates(candidates)
  qualified = candidates.find_all{ |candidate|
    experienced?(candidate) &&
    candidate[:github_points] >= 100 &&
    knows_of_these_lngs?(candidate, ['Python', 'Ruby']) &&
    candidate[:age] > 17 &&
    (Date.today - candidate[:date_applied]).to_i <= 15
  }
end

# order all candidates by years of experience first and github points second
def ordered_by_qualifications(candidates)
  sorted = candidates.sort_by { |candidate| [candidate[:years_of_experience],
end
