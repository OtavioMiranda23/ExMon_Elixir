defmodule ExMon.Game do
  use Agent
  def start(computer, player) do
    initial_vale = %{
      computer: computer,
      player: player,
      turn: :player,
      status: :started
    }
    Agent.start_link(fn -> initial_vale end, name: __MODULE__)
  end
  def info do
    Agent.get(__MODULE__, & &1)
  end

  def player, do: Map.get(info(), :player)

end
