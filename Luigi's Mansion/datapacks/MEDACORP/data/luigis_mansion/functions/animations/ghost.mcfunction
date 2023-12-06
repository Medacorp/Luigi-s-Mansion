data modify storage luigis_mansion:data ghost set value {tags:[],animation:"idle"}
data modify storage luigis_mansion:data ghost.animation set from entity @s data.animation
data modify storage luigis_mansion:data ghost.tags set from entity @s Tags
tag @s add this_entity
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=$(ghost)_model,scores={PassiveNr=$(id)}] run tag @s add found_owner
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=$(ghost)_model,scores={PassiveNr=$(id)}] run function luigis_mansion:animations/ghost/main with storage luigis_mansion:data macro
tag @s remove this_entity