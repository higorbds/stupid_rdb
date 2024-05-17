class Database
  def initialize
    @database = {}

    @database[:heroes] = [
        { id: 1, alterego: "Green Lantern", users_id: 24 },
        { id: 2, alterego: "Mr. Fantastic", users_id: 34 },
        { id: 3, alterego: "Captain America", users_id: 6 },
        { id: 4, alterego: "Oracle", users_id: 31 },
        { id: 5, alterego: "Black Widow", users_id: 9 },
        { id: 6, alterego: "Scarlet Witch", users_id: 33 },
        { id: 7, alterego: "Spiderman", users_id: 22 },
        { id: 8, alterego: "Dark Phoenix", users_id: 20 },
        { id: 9, alterego: "Deadopool", users_id: 23 },
        { id: 10, alterego: "Cat Woman", users_id: 17 },
        { id: 11, alterego: "Human Torch", users_id: 36 },
        { id: 12, alterego: "Jubilee", users_id: 37 },
        { id: 13, alterego: "Spiderman", users_id: 1 },
        { id: 14, alterego: "Green Arrow", users_id: 15 },
        { id: 15, alterego: "Aquaman", users_id: 27 },
        { id: 16, alterego: "Black Panther", users_id: 12 },
        { id: 17, alterego: "Wonder Woman", users_id: 4 },
        { id: 18, alterego: "Batman", users_id: 3 },
        { id: 19, alterego: "Halk Eye", users_id: 10 },
        { id: 20, alterego: "Iron Man", users_id: 7 },
        { id: 21, alterego: "Flash", users_id: 14 },
        { id: 22, alterego: "Ant Man", users_id: 26 },
        { id: 23, alterego: "Ant Man", users_id: 11 },
        { id: 24, alterego: "Hulk", users_id: 5 },
        { id: 25, alterego: "Lady Thor", users_id: 28 },
        { id: 26, alterego: "Cyclops", users_id: 19 },
        { id: 27, alterego: "Superman", users_id: 2 },
    ]

    @database[:users] = [
        { name: "Peter Parker", age: 25, city: "New York", id: 1 },
        { name: "Clark Kent", age: 35, city: "Metropolis", id: 2 },
        { name: "Bruce Wayne", age: 40, city: "Gotham", id: 3 },
        { name: "Diana Prince", age: 500, city: "Themyscira", id: 4 },
        { name: "Bruce Banner", age: 42, city: "New York", id: 5 },
        { name: "Steve Rogers", age: 100, city: "New York", id: 6 },
        { name: "Tony Stark", age: 40, city: "New York", id: 7 },
        { name: "Thor Odinson", age: 1500, city: "Asgard", id: 8 },
        { name: "Natasha Romanoff", age: 35, city: "New York", id: 9 },
        { name: "Clint Barton", age: 43, city: "New York", id: 10 },
        { name: "Scott Lang", age: 41, city: "San Francisco", id: 11 },
        { name: "T'challa", age: 39, city: "Wakanda", id: 12 },
        { name: "Nick Fury", age: 50, city: "Huntsville", id: 13 },
        { name: "Barry Allen", age: 33, city: "Central City", id: 14 },
        { name: "Oliver Queen", age: 40, city: "New York", id: 15 },
        { name: "James Gordon", age: 47, city: "Gotham", id: 16 },
        { name: "Selina Kyle", age: 35, city: "New York", id: 17 },
        { name: "Maria Hill", age: 35, city: "New York", id: 18 },
        { name: "Scott Summers", age: 35, city: "New York", id: 19 },
        { name: "Jean Grey", age: 35, city: "New York", id: 20 },
        { name: "Lois Lane", age: 35, city: "Metropolis", id: 21 },
        { name: "Miles Morales", age: 35, city: "New York", id: 22 },
        { name: "Wade Wilson", age: 35, city: "New York", id: 23 },
        { name: "Hal Jordan", age: 30, city: "Coast City", id: 24 },
        { name: "Okoye", age: 27, city: "Wakanda", id: 25 },
        { name: "Hank Pim", age: 70, city: "San Francisco", id: 26 },
        { name: "Arthur Curry", age: 35, city: "Atlantis", id: 27 },
        { name: "Jane Foster", age: 35, city: "New York", id: 28 },
        { name: "Harley Quinn", age: 30, city: "Gothan", id: 29 },
        { name: "Lex Luthor", age: 45, city: "Metropolis", id: 30 },
        { name: "Barbara Gordon", age: 30, city: "Gotham", id: 31 },
        { name: "Jimmy Olsen", age: 30, city: "Metropolis", id: 32 },
        { name: "Wanda Maximoff", age: 32, city: "New York", id: 33 },
        { name: "Reed Richards", age: 43, city: "New York", id: 34 },
        { name: "Talia al Ghul", age: 35, city: "New York", id: 35 },
        { name: "Johnny Storm", age: 33, city: "New York", id: 36 },
        { name: "Jubilation Lee", age: 22, city: "Los Angeles", id: 37 },
    ]
  end

  def get_db
    return @database
  end

end
