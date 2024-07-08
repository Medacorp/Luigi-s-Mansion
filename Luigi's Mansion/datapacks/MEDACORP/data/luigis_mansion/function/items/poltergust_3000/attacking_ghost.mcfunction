$tag @e[tag=ghost,tag=same_room,scores={VulnerableTime=1..},nbt={data:{attacked_by:[$(id)]}}] add being_vacuumed
$tag @e[tag=ghost,tag=same_room,tag=show_health,nbt={data:{attacked_by:[$(id)]}}] add being_vacuumed
execute store result score #temp GhostCount if entity @e[tag=being_vacuumed]