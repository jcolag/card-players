defmodule CardPlayers.RollResolve do
# NB: run :random.seed(:os.timestamp) before using
  defp one_die(sides \\ 10) do
    round(:random.uniform * sides + 0.5)
  end

  defp dice(recurse \\ -1) do
    left = one_die()
    right = one_die()
    list = []
    doubles = 0
    if recurse != 0 and left == right do
      {doubles, faces} = dice(recurse - 1)
      list = faces
    end
    list = [left, right] ++ list
    {left + right + doubles, list}
  end

  def action(aim, force, evade, defend) do
    {t, faces} = target(aim, evade, true)
    if t do
      {damage(force, defend, t), faces}
    else
      {0, faces}
    end
  end

  def action(aim, force, evade, defend, outcomes) do
    points = action(aim, force, evade, defend)
    cond do
      points <= 0 -> outcomes.none
      points < defend / 2 -> outcomes.minor
      points < defend -> outcomes.half
      true -> outcomes.full
    end 
  end

  def target(aim, evade, want \\ false) do
    {total, faces} = dice
    t = aim + total - evade + 11
    ret = cond do
      !want -> t > 0
      t >= 0 -> round(:math.sqrt(t) - 0.5)
      true -> nil
    end
    {ret, faces}
  end

  def damage(force, defend, critical \\ 0) do
    if defend > force + critical do
      0
    else
      force + critical - defend
    end
  end
end

