defmodule KargoAcademy.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles, primary_key: false) do
      add :id, :string, primary_key: true
      add :vehicle_plate, :string
      add :status, :string

      timestamps()
    end
  end
end
