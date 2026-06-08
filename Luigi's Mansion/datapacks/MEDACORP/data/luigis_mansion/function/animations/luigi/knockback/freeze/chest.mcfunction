execute unless entity @s[scores={AnimationProgress=1..}] run scoreboard players add @s AnimationProgress 1
execute if entity @e[tag=this_luigi,tag=!model_piece,limit=1,scores={AnimationProgress=70..}] run scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0