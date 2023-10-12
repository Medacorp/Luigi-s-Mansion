scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.door.locked block @a[tag=same_room] ~ ~ ~ 1

execute if entity @s[tag=push] run function luigis_mansion:animations/door_bash/push
execute if entity @s[tag=!push] run function luigis_mansion:animations/door_bash/pull

tag @s[scores={AnimationProgress=40}] remove bash_door
scoreboard players reset @s[scores={AnimationProgress=40}] AnimationProgress