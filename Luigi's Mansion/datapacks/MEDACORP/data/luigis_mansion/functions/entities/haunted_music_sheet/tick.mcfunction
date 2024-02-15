execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/haunted_music_sheet/ai

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall

data modify storage luigis_mansion:data macro set value {name:"haunted_music_sheet",ghost:{namespace:"luigis_mansion",id:"haunted_music_sheet"}}
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s GhostNr
function luigis_mansion:animations/ghost with storage luigis_mansion:data macro