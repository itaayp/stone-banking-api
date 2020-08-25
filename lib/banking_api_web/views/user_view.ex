defmodule BankingApiWeb.UserView do
  @moduledoc """
  Essa é a User View. Esse módulo é responsável pelo layout que é apresentado ao usuário após chamar funções referentes ao User Controller
  """

  use BankingApiWeb, :view

  def render("account.json", %{user: user, account: account}) do
    %{
      "Informações do usuário": %{
        "Nome completo": "#{user.first_name} #{user.last_name}",
        "Email": user.email,
        "senha cadastrada": user.password,
        "Tipo de acesso ao sistema": user.role
      },
      "Informações da conta": %{
        "saldo em conta": "R$ #{account.balance},00",
        "número da conta": account.id
      }
    }
  end
end