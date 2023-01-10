class ElvesCarryingCalories
  def initialize(items_list_file)
    @carried_calories = extract_carries_calories(items_list_file)
  end

  def max_calories(number_of_elves: 1)
    carried_calories.max(number_of_elves).sum
  end

  private

  def extract_carries_calories(items_list_file)
    list = []
    memo = 0

    items_list_file
      .readlines
      .each do |line|
        calories = line.strip.to_i
        memo += calories
        if calories.zero?
          list.push(memo)
          memo = 0
        end
      end
    list.push(memo)

    items_list_file.close

    list
  end

  attr_reader :carried_calories
end
