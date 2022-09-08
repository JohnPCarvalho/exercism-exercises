defmodule FreelancerRates do

  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(price, discount_percentage) do
    price - calculate_percentage(price, discount_percentage)
  end

  def monthly_rate(hourly_rate, discount_percentage) do
    total = daily_rate(hourly_rate) * 22
    calculate_percentage(total, discount_percentage)
  end

  def days_in_budget(budget, hourly_rate, discount_percentage) do
    amount_with_discount =
      montly_rate(hourly_rate)
      |> apply_discount(discount_percentage)

  end

  defp calculate_percentage(amount, percentage) do
    (percentage / 100) * amount
  end

  defp montly_rate(hourly_rate) do
    daily_rate(hourly_rate) * 22
  end
end
