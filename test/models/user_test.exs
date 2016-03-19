defmodule Argo.UserTest do
  use Argo.ModelCase

  alias Argo.User

  @valid_attrs %{ email: Faker.Internet.email,
                  name: Faker.Name.name,
                  password: "qwerty123",
                  password_confirmation: "qwerty123" }
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset %User{}, @valid_attrs
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset %User{}, @invalid_attrs
    refute changeset.valid?
  end

  test "password confirmation must be equal to password" do
    attrs = %{@valid_attrs | password_confirmation: '123'}

    assert { :password_confirmation,  "does not match confirmation"} \
      in errors_on(%User{}, attrs)
  end

  test "password must be larger than 7 characters" do
    attrs = %{@valid_attrs | password: '1234567'}

    assert { :password,  "is invalid"} in errors_on(%User{}, attrs)
  end

  test "name must be longer than 2 characters" do
    attrs = %{@valid_attrs | name: '12'}

    assert { :name,  "is invalid"} in errors_on(%User{}, attrs)
  end

  test "email must be longer than 2 characters" do
    attrs = %{@valid_attrs | email: '12'}

    assert { :email,  "is invalid"} in errors_on(%User{}, attrs)
  end

  test "email must have valid email format" do
    attrs = %{@valid_attrs | email: 'testmail '}

    assert { :email,  "is invalid"} in errors_on(%User{}, attrs)
  end
end
