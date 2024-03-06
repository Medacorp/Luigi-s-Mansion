data modify storage luigis_mansion:data passive set value {tags:[],initial_animation_progress:0,animation:{namespace:"luigis_mansion",id:"idle"}}
data modify storage luigis_mansion:data passive.animation set from entity @s ArmorItems[3].tag.luigis_mansion.animation
data modify storage luigis_mansion:data passive.tags set from entity @s Tags
data modify storage luigis_mansion:data passive.initial_animation_progress set from entity @s ArmorItems[3].tag.luigis_mansion.initial_animation_progress
data remove entity @s ArmorItems[3].tag.luigis_mansion.initial_animation_progress
tag @s add this_entity
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=door_model,scores={PassiveNr=$(id)}] run tag @s add found_owner
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=door_model,scores={PassiveNr=$(id)}] rotated ~ 0 run function luigis_mansion:animations/furniture/door/main with storage luigis_mansion:data macro.passive
tag @s remove this_entity