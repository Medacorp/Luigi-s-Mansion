scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=4..6}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 25
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=3..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProgress=6..8}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 25
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=3}] HandItems[0] merge from entity @s HandItems[0].tag.variants.no_food
data modify entity @s[scores={AnimationProgress=5}] HandItems[1] merge from entity @s HandItems[1].tag.variants.no_food
execute if entity @s[scores={AnimationProgress=3}] run playsound luigis_mansion:entity.waiter.place_food hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=5}] run playsound luigis_mansion:entity.waiter.place_food hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={AnimationProgress=10}] remove placing_food
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0