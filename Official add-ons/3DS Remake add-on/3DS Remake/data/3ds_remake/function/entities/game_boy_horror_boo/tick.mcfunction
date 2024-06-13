execute if entity @s[tag=!no_ai] run function 3ds_remake:entities/game_boy_horror_boo/ai

data modify storage luigis_mansion:data macro set value {name:"boo",ghost:{namespace:"luigis_mansion",id:"boo"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro