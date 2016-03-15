defmodule Argo.UsersSignInTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session

  test "user opens sign in page and views sign in form" do
    navigate_to "/users/sign_in"

    assert page_source =~ "Вход на сайт"
    assert element_displayed?({ :id, "sign_in_form" })
  end
end
