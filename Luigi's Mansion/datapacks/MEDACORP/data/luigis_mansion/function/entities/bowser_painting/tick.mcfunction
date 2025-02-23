data modify storage luigis_mansion:data macro set value {name:"bowser_painting",ghost:{namespace:"luigis_mansion",id:"bowser_painting"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro