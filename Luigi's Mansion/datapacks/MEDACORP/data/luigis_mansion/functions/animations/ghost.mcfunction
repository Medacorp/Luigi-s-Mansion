data modify storage luigis_mansion:data ghost set value {tags:[],animation:{namespace:"luigis_mansion",id:"idle"}}
data modify storage luigis_mansion:data ghost.animation set from entity @s data.animation
data modify storage luigis_mansion:data ghost.tags set from entity @s Tags
tag @s add this_entity
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=$(name)_model,scores={GhostNr=$(id)}] run tag @s add found_owner
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=$(name)_model,scores={GhostNr=$(id)}] rotated ~ 0 run function luigis_mansion:animations/ghost/main with storage luigis_mansion:data macro.ghost
tag @s remove this_entity