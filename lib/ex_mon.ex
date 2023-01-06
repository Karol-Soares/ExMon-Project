defmodule ExMon do
<<<<<<< HEAD

  @moduledoc """
  Documentation for ExMon

  It's a game based on turns, where we have one player and the computer.
  - Human and computer begin with 100 life points
  - Each round, each player will be able to make 3 moves: moderate move, random movie and heal move

  With each move, what happened and the situation of each player must be showed on the screen. *****

  Examples

  iex> ExMon.create_player("Karol", :chute, :soco, :cura)
  %ExMon.Player{
    life: 100,
    move_avg: :chute,
    move_heal: :cura,
    move_rnd: :soco,
    name: "Karol"
  }

  """
  alias ExMon.{Game, Player}
  alias ExMon.Game.Status
=======
  alias ExMon.{Game, Player}
>>>>>>> 8ad038ca62a0ad701ed858500c79fc2a1b3aa165

  @computer_name "BenderRobot"
  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)
<<<<<<< HEAD

    Status.print_round_message()
=======
>>>>>>> 8ad038ca62a0ad701ed858500c79fc2a1b3aa165
  end
end
