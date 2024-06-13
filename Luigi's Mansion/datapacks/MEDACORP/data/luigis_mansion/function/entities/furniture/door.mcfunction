data modify storage luigis_mansion:data macro set value {name:"door",passive:{namespace:"luigis_mansion",id:"furniture/door"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
function luigis_mansion:animations/furniture/door with storage luigis_mansion:data macro