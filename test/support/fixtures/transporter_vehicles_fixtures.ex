defmodule KargoAcademy.TransporterVehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `KargoAcademy.TransporterVehicles` context.
  """

  @doc """
  Generate a transporter_vehicle.
  """
  def transporter_vehicle_fixture(attrs \\ %{}) do
    {:ok, transporter_vehicle} =
      attrs
      |> Enum.into(%{
        transporter_id: "some transporter_id",
        vehicle_id: "some vehicle_id"
      })
      |> KargoAcademy.TransporterVehicles.create_transporter_vehicle()

    transporter_vehicle
  end
end
