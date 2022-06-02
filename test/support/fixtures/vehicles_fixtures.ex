defmodule KargoAcademy.VehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `KargoAcademy.Vehicles` context.
  """

  @doc """
  Generate a vehicle.
  """
  def vehicle_fixture(attrs \\ %{}) do
    {:ok, vehicle} =
      attrs
      |> Enum.into(%{
        id: "some id",
        status: "some status",
        vehicle_plate: "some vehicle_plate"
      })
      |> KargoAcademy.Vehicles.create_vehicle()

    vehicle
  end
end
