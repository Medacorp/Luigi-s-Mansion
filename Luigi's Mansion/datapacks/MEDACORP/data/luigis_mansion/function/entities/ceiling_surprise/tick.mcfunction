execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/ceiling_surprise/ai

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/ceiling_ghost

data modify storage luigis_mansion:data macro set value {name:"ceiling_ghost",ghost:{namespace:"luigis_mansion",id:"ceiling_ghost"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro