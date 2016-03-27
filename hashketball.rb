# Write your code here!
def game_hash()
  hash = {
    home:{
      team_name: "Brooklyn Nets",
      colors: ["Black","White"],
      players:[
         {
        name_stats: "Alan Anderson",
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1

          },
        {
          name_stats: "Reggie Evans",
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7

          },
       {
          name_stats: "Brook Lopez",
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15

          },
        {
        name_stats: "Mason Plumlee",
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5

          },
         {
          name_stats: "Jason Terry",
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1

          }

        ]

      },
    away:{
      team_name: "Charlotte Hornets",
      colors: ["Turquoise","Purple"],
      players:[
        {
          name_stats: "Jeff Adrien",
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2

          },
        {
          name_stats: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10

          },
        {
          name_stats: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5

          },
         {
          name_stats: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0

          },
       {
          name_stats: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12

          }

        ]
      }
    }
  return hash
end

def num_points_scored(pname)

  #the_hash[:home][:players].each{ |x| puts "something #{x[:points]}"}
game_hash.each do |team,value|
    value[:players].each do |info|
      if info[:name_stats] == pname
        return info[:points]
      end
    end
  end
end

def shoe_size(pname)

  #the_hash[:home][:players].each{ |x| puts "something #{x[:points]}"}
  game_hash.each do |team,value|
    value[:players].each do |info|
      if info[:name_stats] == pname
        return info[:shoe]
      end
    end
  end
end

def player_numbers(pname)

  #the_hash[:home][:players].each{ |x| puts "something #{x[:points]}"}
  game_hash.each do |team,value|
    value[:players].each do |info|
      if info[:name_stats] == pname
        return info[:number]
      end
    end
  end
end

def team_colors(tname)

  game_hash.each do |team,value|
    if value[:team_name] == tname
      return value[:colors]
    end
  end

end

def team_names()
  names = []

  game_hash.each do |team,value|
    names.push(value[:team_name])
  end
  return names
end

def player_numbers(tname)
  all_numbers = []

  game_hash.each do |team,value|
    if value[:team_name] == tname
       value[:players].each do |item|
         all_numbers.push(item[:number])
      end
    end
  end
    return all_numbers
end

def player_stats(pname)

  game_hash.each do |team,value|
    value[:players].each do |item|
      if item[:name_stats] == pname
        item.reject!{ |k| k == :name_stats }
        return item
      end
    end
  end
end

def big_shoe_rebounds()

  biggest_shoe = 0
  #first establish the biggest shoe size
  game_hash.each do |team,value|
    value[:players].each do |item|
      if item[:shoe] >= biggest_shoe
        biggest_shoe = item[:shoe]
      end
    end
  end
  #now go back and find that person's rebounds
   game_hash.each do |team,value|
    value[:players].each do |item|
      if item[:shoe] == biggest_shoe
        return item[:rebounds]
      end
    end
  end



end