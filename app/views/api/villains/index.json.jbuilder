json.array! @villains.each do |villain|
  json.id villain.id
  json.name villain.name
  json.powers villain.powers
  json.enemy villain.enemy
end
