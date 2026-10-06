scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1},tag=affected_by_vacuum] add originally_affected
tag @s[scores={ActionTime=1},tag=shaken_by_vacuum] add originally_shaken
tag @s[scores={ActionTime=1}] add affected_by_vacuum
tag @s[scores={ActionTime=1}] add shaken_by_vacuum
scoreboard players add @s FurnitureNoteTime 1

scoreboard players operation #temp ActionTime = @s ActionTime
scoreboard players operation #temp ActionTime %= #52 Constants
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 1 run playsound luigis_mansion:furniture.clock.whistle_down block @a[tag=same_room] ^ ^2 ^ 1
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 1 run playsound luigis_mansion:furniture.clock.winding_up block @a[tag=same_room] ^ ^2 ^ 1
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 14 run playsound luigis_mansion:furniture.clock.winding_down block @a[tag=same_room] ^ ^2 ^ 1
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 1..26 store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=..780}] unless score #temp ActionTime matches 1..26 store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 27 run playsound luigis_mansion:furniture.clock.whistle_up block @a[tag=same_room] ^ ^2 ^ 1
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 27 run playsound luigis_mansion:furniture.clock.winding_up block @a[tag=same_room] ^ ^2 ^ 1
execute if entity @s[scores={ActionTime=..780}] if score #temp ActionTime matches 40 run playsound luigis_mansion:furniture.clock.winding_down block @a[tag=same_room] ^ ^2 ^ 1
scoreboard players reset #temp ActionTime

execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 0.2
scoreboard players set @s[scores={Sound=0}] Sound 5
execute if entity @s[scores={FurnitureNoteTime=1}] run particle minecraft:note ^ ^2.5 ^ 0.125 0 0 1 0 normal @a[tag=same_room]
execute if entity @s[scores={ActionTime=800..}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 0
tag @s[scores={ActionTime=800..}] remove open
tag @s[scores={ActionTime=800..},tag=!originally_affected] remove affected_by_vacuum
tag @s[scores={ActionTime=800..},tag=!originally_shaken] remove shaken_by_vacuum
scoreboard players set @s[scores={ActionTime=800..}] FurnitureNoteTime 0
scoreboard players set @s[scores={ActionTime=800..}] ActionTime 0
scoreboard players reset @s[scores={FurnitureNoteTime=11}] FurnitureNoteTime