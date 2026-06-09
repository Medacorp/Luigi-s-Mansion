scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] if score #mirrored Selected matches 1 run execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=2}] AnimationRotationX 250
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=3}] AnimationRotationX 500
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=4}] AnimationRotationX 750
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=5}] AnimationRotationX 1000
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX 1000
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=7}] AnimationRotationX 750
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=8}] AnimationRotationX 500
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=9}] AnimationRotationX 250
execute if entity @s[scores={AnimationProgress=10}] if score #mirrored Selected matches 1 run execute if entity @s[tag=held_item,tag=poltergust_grabbed] unless data entity @s item.components."minecraft:custom_data".is_nozzle if score #mirrored Selected matches 1 run data modify entity @s item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute if entity @s[tag=held_item,tag=!poltergust_grabbed] if data entity @s item.components."minecraft:custom_data".is_nozzle if score #mirrored Selected matches 1 run data remove entity @s item
scoreboard players add @s[scores={AnimationProgress=10}] AnimationProgress 0