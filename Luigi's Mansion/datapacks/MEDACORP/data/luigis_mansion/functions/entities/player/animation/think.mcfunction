scoreboard players add @s AnimationProgress 1
scoreboard players set @s Sound 1
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none