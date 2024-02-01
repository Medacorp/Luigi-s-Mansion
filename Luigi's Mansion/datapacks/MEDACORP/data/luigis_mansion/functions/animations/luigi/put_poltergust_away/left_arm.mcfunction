scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute if entity @s[scores={AnimationProgress=2}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProgress=3}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProgress=4}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 75
execute if entity @s[scores={AnimationProgress=5}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 100
execute if entity @s[scores={AnimationProgress=6}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 100
execute if entity @s[scores={AnimationProgress=7}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 75
execute if entity @s[scores={AnimationProgress=8}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProgress=9}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProgress=10}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute if entity @s[tag=held_item,tag=poltergust_grabbed] unless data entity @s ArmorItems[3].tag.luigis_mansion.is_nozzle if score #mirrored Selected matches 1 run data modify entity @s ArmorItems[3] set from storage luigis_mansion:data luigi.poltergust
execute if entity @s[tag=held_item,tag=!poltergust_grabbed] if data entity @s ArmorItems[3].tag.luigis_mansion.is_nozzle if score #mirrored Selected matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",Count:1b}
scoreboard players reset #temp Time
scoreboard players add @s[scores={AnimationProgress=10}] AnimationProgress 0