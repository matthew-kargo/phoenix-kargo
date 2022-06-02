defmodule KargoAcademy.Repo.Migrations.ChangeIdTransporter do
  use Ecto.Migration

  def change do
    alter table(:transporters) do
      modify :id, :integer
    end
    alter table(:vehicles) do
      modify :id, :integer
    end
  end
end
