execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/fake_door/ai

data modify storage luigis_mansion:data macro set value {name:"fake_door",ghost:{namespace:"luigis_mansion",id:"fake_door"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro