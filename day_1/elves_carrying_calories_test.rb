require 'minitest/autorun'
require 'minitest/spec'

require_relative 'elves_carrying_calories'

describe ElvesCarryingCalories do
  it 'calculates the most calories carrying by one Elf' do
    items_list_file = File.open('elves_carrying_calories_test_input.txt')
    assert_equal 24_000, ElvesCarryingCalories.new(items_list_file).max_calories
  end
  
  it 'calculates the most calories carrying by three Elves' do
    items_list_file = File.open('elves_carrying_calories_test_input.txt')
    assert_equal 45_000, ElvesCarryingCalories.new(items_list_file).max_calories(number_of_elves: 3)
  end
end

p 'Puzzle 1 answer:'
items_list_file = File.open('elves_carrying_calories_puzzle_input.txt')
elves_carrying_calories = ElvesCarryingCalories.new(items_list_file)
p elves_carrying_calories.max_calories

p '------------------'
p 'Puzzle 2 answer:'
p elves_carrying_calories.max_calories(number_of_elves: 3)
