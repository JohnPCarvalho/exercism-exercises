defmodule Lasagna do

  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(current_minutes) do
    expected_minutes_in_oven - current_minutes
  end

  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * 2
  end

  def total_time_in_minutes(number_of_layers, lasagna_oven_time) do
    preparation_time_in_minutes(number_of_layers) + lasagna_oven_time
  end

  def alarm do
    "Ding!"
  end
end
