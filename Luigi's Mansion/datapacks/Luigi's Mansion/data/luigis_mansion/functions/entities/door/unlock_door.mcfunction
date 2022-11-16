scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=80}] run function #luigis_mansion:entities/door/unlock
execute if entity @s[scores={AnimationProg=180}] run playsound luigis_mansion:furniture.door.grab_knob block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=200}] run playsound luigis_mansion:furniture.door.turn_knob block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=240}] run playsound luigis_mansion:furniture.door.crack block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProg = @s AnimationProg
execute if entity @s[tag=!pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/unlock/push
execute if entity @s[tag=pull] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/unlock/pull

tag @s[scores={AnimationProg=260}] remove unlock_door
tag @s[scores={AnimationProg=260}] add open_door
execute if entity @s[scores={AnimationProg=260}] run scoreboard players reset @e[tag=this_model,limit=1] AnimationProg
scoreboard players reset @s[scores={AnimationProg=260}] AnimationProg