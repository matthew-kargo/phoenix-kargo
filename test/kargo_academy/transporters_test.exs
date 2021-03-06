defmodule KargoAcademy.TransportersTest do
  use KargoAcademy.DataCase

  alias KargoAcademy.Transporters

  describe "transporters" do
    alias KargoAcademy.Transporters.Transporter

    import KargoAcademy.TransportersFixtures

    @invalid_attrs %{id: nil, name: nil, npwp_number: nil, phone_number: nil, status: nil}

    test "list_transporters/0 returns all transporters" do
      transporter = transporter_fixture()
      assert Transporters.list_transporters() == [transporter]
    end

    test "get_transporter!/1 returns the transporter with given id" do
      transporter = transporter_fixture()
      assert Transporters.get_transporter!(transporter.id) == transporter
    end

    test "create_transporter/1 with valid data creates a transporter" do
      valid_attrs = %{id: 42, name: "some name", npwp_number: "some npwp_number", phone_number: "some phone_number", status: "some status"}

      assert {:ok, %Transporter{} = transporter} = Transporters.create_transporter(valid_attrs)
      assert transporter.id == 42
      assert transporter.name == "some name"
      assert transporter.npwp_number == "some npwp_number"
      assert transporter.phone_number == "some phone_number"
      assert transporter.status == "some status"
    end

    test "create_transporter/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Transporters.create_transporter(@invalid_attrs)
    end

    test "update_transporter/2 with valid data updates the transporter" do
      transporter = transporter_fixture()
      update_attrs = %{id: 43, name: "some updated name", npwp_number: "some updated npwp_number", phone_number: "some updated phone_number", status: "some updated status"}

      assert {:ok, %Transporter{} = transporter} = Transporters.update_transporter(transporter, update_attrs)
      assert transporter.id == 43
      assert transporter.name == "some updated name"
      assert transporter.npwp_number == "some updated npwp_number"
      assert transporter.phone_number == "some updated phone_number"
      assert transporter.status == "some updated status"
    end

    test "update_transporter/2 with invalid data returns error changeset" do
      transporter = transporter_fixture()
      assert {:error, %Ecto.Changeset{}} = Transporters.update_transporter(transporter, @invalid_attrs)
      assert transporter == Transporters.get_transporter!(transporter.id)
    end

    test "delete_transporter/1 deletes the transporter" do
      transporter = transporter_fixture()
      assert {:ok, %Transporter{}} = Transporters.delete_transporter(transporter)
      assert_raise Ecto.NoResultsError, fn -> Transporters.get_transporter!(transporter.id) end
    end

    test "change_transporter/1 returns a transporter changeset" do
      transporter = transporter_fixture()
      assert %Ecto.Changeset{} = Transporters.change_transporter(transporter)
    end
  end
end
