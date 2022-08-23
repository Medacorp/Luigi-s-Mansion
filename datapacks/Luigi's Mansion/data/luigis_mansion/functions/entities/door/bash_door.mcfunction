scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run playsound luigis_mansion:block.door.locked block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProg = @s AnimationProg
execute if entity @s[tag=!pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/bash/push
execute if entity @s[tag=pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/bash/pull

tag @s[scores={AnimationProg=40}] remove bash_door
execute if entity @s[scores={AnimationProg=40}] run scoreboard players reset @e[tag=this_model,limit=1] AnimationProg
scoreboard players reset @s[scores={AnimationProg=40}] AnimationProg