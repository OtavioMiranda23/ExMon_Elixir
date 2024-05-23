defmodule ExMon.Player do
  @required_list [:life, :name, :move_rnd, :move_avg, :move_heal]
  @max_life 100

  @enforce_keys @required_list
  defstruct @required_list

  def build(name, move_rnd, move_avg, move_heal) do
    %ExMon.Player{
      life: @max_life,
      move_avg: move_avg,
      move_heal: move_heal,
      move_rnd: move_rnd,
      name: name,
    }
  end
end
