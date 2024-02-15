data modify storage luigis_mansion:data passive set value {tags:[],animation:{namespace:"luigis_mansion",id:"idle"},rotation:[0.0f,0.0f]}
data modify storage luigis_mansion:data passive.animation set from entity @s data.animation
data modify storage luigis_mansion:data passive.tags set from entity @s Tags
data modify storage luigis_mansion:data passive.rotation set from entity @s Rotation
tag @s add this_entity
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=$(name)_model,scores={PassiveNr=$(id)}] run tag @s add found_owner
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=$(name)_model,scores={PassiveNr=$(id)}] rotated ~ 0 run function luigis_mansion:animations/passive/main
tag @s remove this_entity