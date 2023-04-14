defmodule ExMon do
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
  alias ExMon.Game.{Actions, Status}

  @computer_name "BenderRobot"
  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
      :move_heal -> "realiza_cura"
      move -> Actions.attack(move)
    end
  end

end
