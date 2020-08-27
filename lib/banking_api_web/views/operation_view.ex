defmodule BankingApiWeb.OperationView do
  @moduledoc """
  Essa é a Operation View. Este módulo é responsável pelo layout que é apresentado ao usuário após chamar requisições relacionadas às operações, como transferência e saque
  """

  use BankingApiWeb, :view

  @doc """
  Essa função é responsável por renderizar para o usuário final o feedback de que a operação realizada foi bem sucedida.
  Os argumentos da função são a string "operation_succeeded.json" e um map contendo o valor `message` que será exibido ao usuário

  A função é responsável por renderizar ao usuário final o feedback quando a operação realizada foi bem sucedida.

  Os argumentos da função são:
    1. A string `"operation_succeeded.json"`.
    2. `%{message: message}`: Um map que contém a mensagem exibida no feedback.
  """
  def render("operation_succeeded.json", %{message: message}) do
    %{
      message: message
    }
  end
end
