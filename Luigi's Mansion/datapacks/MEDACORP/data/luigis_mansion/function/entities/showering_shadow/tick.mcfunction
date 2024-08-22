tag @s[tag=!invisible] add visible
tag @s[tag=invisible] remove visible
execute if block ^-0.1 ^ ^ #luigis_mansion:ghosts_ignore if block ^0.1 ^ ^ #luigis_mansion:ghosts_ignore run tag @s remove visible

data modify storage luigis_mansion:data macro set value {name:"showering_shadow",ghost:{namespace:"luigis_mansion",id:"showering_shadow"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro