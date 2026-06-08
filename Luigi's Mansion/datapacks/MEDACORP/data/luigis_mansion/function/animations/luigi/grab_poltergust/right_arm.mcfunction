scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] unless score #mirrored Selected matches 1 run execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=2}] AnimationRotationX 250
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=3}] AnimationRotationX 500
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=4}] AnimationRotationX 750
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=5}] AnimationRotationX 1000
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX 1000
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=7}] AnimationRotationX 750
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=8}] AnimationRotationX 500
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=9}] AnimationRotationX 250
execute if entity @s[scores={AnimationProgress=10}] unless score #mirrored Selected matches 1 run execute if entity @s[tag=held_item,tag=poltergust_grabbed] unless data entity @s equipment.head.components."minecraft:custom_data".is_nozzle unless score #mirrored Selected matches 1 run data modify entity @s equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute if entity @s[tag=held_item,tag=!poltergust_grabbed] if data entity @s equipment.head.components."minecraft:custom_data".is_nozzle unless score #mirrored Selected matches 1 run data remove entity @s equipment.head
scoreboard players add @s[scores={AnimationProgress=10}] AnimationProgress 0