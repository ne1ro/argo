defmodule Argo.UsersSignInTest do
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

  test "user opens sign in page and views sign in form" do
    navigate_to "/users/sign_in"

    assert page_source =~ "Вход на сайт"
    assert element_displayed?({ :id, "sign_in_form" })
  end

  test "user fills the sign in form with non-existed user data" do
    navigate_to "users/sign_in"

    email = find_element :id, "email"
    password = find_element :id, "password"

    fill_field email, "non.existed.test@example.com"
    fill_field password, "passw1234"
    submit_element email
    submit_element password

    assert page_source =~ "Не удалось войти на сайт по указанным данным."
  end

  test "user fills the sign in form with valid user data" do
    navigate_to "users/sign_in"
    changeset = User.changeset %User{}, @valid_attrs
    Repo.insert changeset

    email = find_element :id, "email"
    password = find_element :id, "password"

    fill_field email, @valid_attrs[:email]
    fill_field password, @valid_attrs[:password]
    submit_element email
    submit_element password

    assert page_source =~ "Вход на сайт выполнен успешно!"
  end
end
