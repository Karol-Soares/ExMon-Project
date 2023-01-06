defmodule ExMon.Game do
  use Agent

  def start(computer, player) do
<<<<<<< HEAD
    initial_value = %{computer: computer, player: player,  turn: :player, status: :started}
=======
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}
>>>>>>> 8ad038ca62a0ad701ed858500c79fc2a1b3aa165
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end
<<<<<<< HEAD
=======

>>>>>>> 8ad038ca62a0ad701ed858500c79fc2a1b3aa165
end
