execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/blue_blaze/ai

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall

data modify storage luigis_mansion:data macro set value {name:"twirler",ghost:{namespace:"luigis_mansion",id:"twirler"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro