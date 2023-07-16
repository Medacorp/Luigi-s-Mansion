scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=80}] run function #luigis_mansion:entities/door/unlock
execute if entity @s[scores={AnimationProgress=180}] run playsound luigis_mansion:furniture.door.grab_knob block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=200}] run playsound luigis_mansion:furniture.door.turn_knob block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=240}] run playsound luigis_mansion:furniture.door.crack block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProgress = @s AnimationProgress
execute if entity @s[tag=!pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/unlock/push
execute if entity @s[tag=pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/unlock/pull

tag @s[scores={AnimationProgress=260}] remove unlock_door
tag @s[scores={AnimationProgress=260}] add open_door
execute if entity @s[scores={AnimationProgress=260}] run scoreboard players reset @e[tag=this_model,limit=1] AnimationProgress
scoreboard players reset @s[scores={AnimationProgress=260}] AnimationProgress