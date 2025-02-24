data modify storage luigis_mansion:data macro set value {name:"bowser_painting",passive:{namespace:"luigis_mansion",id:"bowser_painting"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s PassiveNr
function luigis_mansion:animations/passive with storage luigis_mansion:data macro