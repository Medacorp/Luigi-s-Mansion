execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/bowser/ai with entity @s data.mansion

data modify storage luigis_mansion:data macro set value {name:"bowser",ghost:{namespace:"luigis_mansion",id:"bowser"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro