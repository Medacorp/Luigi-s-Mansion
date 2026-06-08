scoreboard players add @s AnimationProgress 1
execute store result score @s[scores={AnimationProgress=1}] AnimationRotationX run data get entity @e[tag=this_entity,limit=1] data.rotation 10
execute if score @s AnimationRotationX matches 320..900 run scoreboard players remove @s AnimationRotationX 20
execute if score @s AnimationRotationX matches -900..280 run scoreboard players add @s AnimationRotationX 20
execute if score @s AnimationRotationX matches 280..320 run tag @e[tag=this_entity,limit=1] add can_reattach