scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=5}] run playsound luigis_mansion:furniture.door.fake_open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=45}] run playsound luigis_mansion:furniture.door.fake_closing block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=70}] run playsound luigis_mansion:furniture.door.fake_close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=100}] run playsound luigis_mansion:entity.ghost.laugh block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProg = @s AnimationProg
execute as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/attack

tag @s[scores={AnimationProg=100}] remove attack
scoreboard players reset @s[scores={AnimationProg=100}] AnimationProg