defmodule FreelancerRates do

  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(price, discount_percentage) do
    price - calculate_percentage(price, discount_percentage)
  end

  def monthly_rate(hourly_rate, discount_percentage) do
    total = daily_rate(hourly_rate) * 22

    round_and_trunc(total)
    |> apply_discount(discount_percentage)
    |> round_and_trunc()
  end

  def days_in_budget(budget, hourly_rate, discount_percentage) do
    daily_with_discount =
      daily_rate(hourly_rate)
      |> apply_discount(discount_percentage)

    budget / daily_with_discount
    |> Float.floor(1)
  end

  defp calculate_percentage(amount, percentage) do
    (percentage / 100) * amount
  end

  defp round_and_trunc(value) do
    value
    |> Float.ceil
    |> trunc
  end
end
