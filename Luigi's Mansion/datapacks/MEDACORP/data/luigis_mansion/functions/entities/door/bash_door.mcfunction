scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.door.locked block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProgress = @s AnimationProgress
execute if entity @s[tag=!pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/bash/push
execute if entity @s[tag=pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/bash/pull

tag @s[scores={AnimationProgress=40}] remove bash_door
execute if entity @s[scores={AnimationProgress=40}] run scoreboard players reset @e[tag=this_model,limit=1] AnimationProgress
scoreboard players reset @s[scores={AnimationProgress=40}] AnimationProgress