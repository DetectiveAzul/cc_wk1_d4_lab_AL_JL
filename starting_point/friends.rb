def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def check_if_favourite_food(person, food_to_check)
  for food in person[:favourites][:things_to_eat]
    if food == food_to_check
      return true
    end
  end
  return false
end

def add_new_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_a_friend(person, friend_to_remove)
  person[:friends].delete(friend_to_remove)
end

def get_everybodies_total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def moving_monies(lender, lendee, amount)
  if lender[:monies] < amount
    amount = lender[:monies]
  end
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def get_everyones_favourite_food(people)
  everyones_favourite_food = []
  for person in people
  everyones_favourite_food.concat(person[:favourites][:things_to_eat])
  end
  return everyones_favourite_food
end

def checking_number_of_friends(people)
  number_of_people_with_no_friends = []
    for person in people
      if person[:friends].length == 0
    number_of_people_with_no_friends.push(person)
      end
    end
  return number_of_people_with_no_friends
end
