ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Argo.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Argo.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Argo.Repo)

