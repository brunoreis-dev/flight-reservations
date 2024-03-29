defmodule Flightex do
  # alias Flightex.Bookings.Agent, as: BookingAgent
  # alias Flightex.Orders.CreateOrUpdate, as: CreateOrUpdateOrder
  alias Flightex.Users.Agent, as: UserAgent
  alias Flightex.Users.CreateOrUpdate, as: CreateOrUpdateUser

  def start_agents do
    UserAgent.start_link(%{})
    # BookingAgent.start_link(%{})
  end

  defdelegate create_or_update_user(params), to: CreateOrUpdateUser, as: :call
  # defdelegate create_or_update_order(params), to: CreateOrUpdateOrder, as: :call
end
