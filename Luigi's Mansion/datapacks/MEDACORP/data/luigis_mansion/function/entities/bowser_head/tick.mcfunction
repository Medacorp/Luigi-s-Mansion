execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/bowser_head/ai with entity @s data.mansion

data modify storage luigis_mansion:data macro set value {name:"bowser",passive:{namespace:"luigis_mansion",id:"bowser_head"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
function luigis_mansion:animations/passive with storage luigis_mansion:data macro