data modify storage luigis_mansion:data passive set value {tags:[],room:0,mirror:{},initial_animation_progress:0,animation:{namespace:"luigis_mansion",id:"idle"},rotation:[0.0f,0.0f],poltergust:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}}
execute store result storage luigis_mansion:data passive.room int 1 run scoreboard players get @s Room
execute if entity @s[scores={MirrorX=-2147483648..}] store result storage luigis_mansion:data passive.mirror.x int 1 run scoreboard players get @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] store result storage luigis_mansion:data passive.mirror.z int 1 run scoreboard players get @s MirrorZ
#todelete - old mirror reflections
execute store result storage luigis_mansion:data passive.mirror.mirror_set_by_furniture_entity byte 1 if entity @s[tag=mirror_set_by_furniture_entity]
#/todelete
data modify storage luigis_mansion:data passive.initial_animation_progress set from entity @s data.initial_animation_progress
data remove entity @s data.initial_animation_progress
data modify storage luigis_mansion:data passive.animation set from entity @s data.animation
data modify storage luigis_mansion:data passive.poltergust set from entity @s data.poltergust
data modify storage luigis_mansion:data passive.tags set from entity @s Tags
data modify storage luigis_mansion:data passive.rotation set from entity @s Rotation
tag @s add this_entity
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=e_gadd_model,scores={PassiveNr=$(id)}] run function luigis_mansion:animations/passive/frozen
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=e_gadd_model,scores={PassiveNr=$(id)}] rotated ~ 0 run function luigis_mansion:animations/passive/main with storage luigis_mansion:data macro.passive
tag @s remove this_entity