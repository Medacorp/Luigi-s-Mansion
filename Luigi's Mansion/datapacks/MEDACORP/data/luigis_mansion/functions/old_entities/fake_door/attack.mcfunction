scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5}] run playsound luigis_mansion:furniture.door.fake_open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=45}] run playsound luigis_mansion:furniture.door.fake_closing block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion:furniture.door.fake_close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion:entity.ghost.laugh block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProgress = @s AnimationProgress
execute as @e[tag=this_model,limit=1] run function luigis_mansion:old_animations/fake_door/attack

tag @s[scores={AnimationProgress=100}] remove attack
execute if entity @s[scores={AnimationProgress=100}] run scoreboard players reset @e[tag=this_model,limit=1] AnimationProgress
scoreboard players reset @s[scores={AnimationProgress=100}] AnimationProgress