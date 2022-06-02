defmodule KargoAcademy.Repo.Migrations.CreateTransporters do
  use Ecto.Migration

  def change do
    create table(:transporters, primary_key: false) do
      add :id, :string, primary_key: true
      add :name, :string
      add :phone_number, :string
      add :npwp_number, :string
      add :status, :string

      timestamps()
    end
  end
end
