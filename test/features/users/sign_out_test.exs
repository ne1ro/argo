defmodule Argo.UsersSignOutTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session

  alias Argo.User
  alias Argo.Repo
  alias Faker

  @valid_attrs %{ email: Faker.Internet.email,
                  name: Faker.Name.name,
                  password: "qwerty123",
                  password_confirmation: "qwerty123" }

  test "user logins and views sign in form" do
    navigate_to "/"

    assert page_source =~ "sign_out"
    assert page_source =~ "Выйти"
  end

  test "user signs out" do
    navigate_to "users/sign_out"

    assert page_source =~ "Выход из сайта выполнен"
  end
end
