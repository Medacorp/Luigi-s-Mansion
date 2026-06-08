execute unless entity @s[scores={AnimationProgress=1..}] run scoreboard players add @s AnimationProgress 1
execute if entity @e[tag=this_luigi,tag=!model_piece,limit=1,scores={AnimationProgress=70..}] run scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -350
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0