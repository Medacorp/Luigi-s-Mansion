execute unless data entity @s ArmorItems[3].components."minecraft:custom_data".animation run data modify entity @s ArmorItems[3].components."minecraft:custom_data".animation set value {namespace:"luigis_mansion",id:"idle"}
data modify storage luigis_mansion:data passive set value {tags:[],room:0,mirror:{},initial_animation_progress:0,animation:{namespace:"luigis_mansion",id:"idle"}}
execute store result storage luigis_mansion:data passive.room int 1 run scoreboard players get @s Room
execute if entity @s[scores={MirrorX=-2147483648..}] store result storage luigis_mansion:data passive.mirror.x int 1 run scoreboard players get @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] store result storage luigis_mansion:data passive.mirror.z int 1 run scoreboard players get @s MirrorZ
#todelete - old mirror reflections
execute store result storage luigis_mansion:data passive.mirror.mirror_set_by_furniture_entity byte 1 if entity @s[tag=mirror_set_by_furniture_entity]
#/todelete
data modify storage luigis_mansion:data passive.initial_animation_progress set from entity @s ArmorItems[3].components."minecraft:custom_data".initial_animation_progress
data remove entity @s ArmorItems[3].components."minecraft:custom_data".initial_animation_progress
data modify storage luigis_mansion:data passive.animation set from entity @s ArmorItems[3].components."minecraft:custom_data".animation
data modify storage luigis_mansion:data passive.tags set from entity @s Tags
tag @s add this_entity
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=door_model,scores={PassiveNr=$(id)}] run tag @s add found_owner
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=door_model,scores={PassiveNr=$(id)}] rotated ~ 0 run function luigis_mansion:animations/furniture/door/main with storage luigis_mansion:data macro.passive
tag @s remove this_entity