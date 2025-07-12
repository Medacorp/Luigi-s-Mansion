execute store result score #temp ReflectionNr run data get storage luigis_mansion:data mirror.id
execute as @e[type=minecraft:item_display] if score @s ReflectionNr = #temp ReflectionNr at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"],NoGravity:1b}
scoreboard players reset #temp ReflectionNr

execute store result score #temp HomeX run data get storage luigis_mansion:data mirror.no_sync.Pos[0] 100
execute store result score #temp HomeZ run data get storage luigis_mansion:data mirror.no_sync.Pos[2] 100
execute store result score #temp MirrorX run data get storage luigis_mansion:data mirror.mirror.value
execute store result score #temp MirrorZ run data get storage luigis_mansion:data mirror.mirror.z

#todelete - old mirror reflections
execute if data storage luigis_mansion:data mirror.mirror{set_by_furniture_entity:1b} run scoreboard players operation #temp MirrorX *= #10 Constants
execute unless data storage luigis_mansion:data mirror.mirror{set_by_furniture_entity:1b} run scoreboard players operation #temp MirrorX *= #100 Constants
execute unless data storage luigis_mansion:data mirror.mirror{set_by_furniture_entity:1b} run scoreboard players add #temp MirrorX 50
#/tedelete

execute if score #temp MirrorZ matches 0 as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/x
execute if score #temp MirrorZ matches 1 as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/z

execute at @e[tag=temp,limit=1] run summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.reflection"},Tags:["reflection","new","force_sync"]}
kill @e[tag=temp,limit=1]
execute store result score @e[tag=new,limit=1] Room run data get storage luigis_mansion:data mirror.room
execute store result score @e[tag=new,limit=1] ReflectionNr run data get storage luigis_mansion:data mirror.id
data modify entity @e[tag=new,limit=1] Rotation[1] set from storage luigis_mansion:data mirror.no_sync.Rotation[1]
execute if score #temp MirrorZ matches 0 as @e[tag=new,limit=1] run function luigis_mansion:entities/reflection/rotation/x
execute if score #temp MirrorZ matches 1 as @e[tag=new,limit=1] run function luigis_mansion:entities/reflection/rotation/z
execute if data storage luigis_mansion:data mirror.no_sync{Tags:["immobile"]} run tag @s add immobile
execute if data storage luigis_mansion:data mirror.no_sync{Tags:["static"]} run tag @s add static
tag @e[tag=new,limit=1] remove new

scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeZ
scoreboard players reset #temp ActionTime