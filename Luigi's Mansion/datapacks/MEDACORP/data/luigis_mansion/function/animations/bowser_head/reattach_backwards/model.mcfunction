scoreboard players add @s AnimationProgress 1
execute store result score @s[scores={AnimationProgress=1}] AnimationRotationX run data get entity @e[tag=this_entity,limit=1] data.rotation 10
execute if score @s AnimationRotationX matches -680..900 run scoreboard players remove @s AnimationRotationX 20
execute if score @s AnimationRotationX matches -900..-720 run scoreboard players add @s AnimationRotationX 20
execute if score @s AnimationRotationY matches -1760..0 run scoreboard players remove @s AnimationRotationY 40
execute if score @s AnimationRotationY matches 0..1760 run scoreboard players add @s AnimationRotationY 40
execute if score @s AnimationRotationX matches -710..-690 unless score @s AnimationRotationY matches -1760..1760 run tag @e[tag=this_entity,limit=1] add can_reattach