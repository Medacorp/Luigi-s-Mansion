scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=6}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=6}] run playsound luigis_mansion:entity.ceiling_surprise.clap hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=14}] run playsound luigis_mansion:entity.ceiling_surprise.clap hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=16}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=21}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=22}] run playsound luigis_mansion:entity.ceiling_surprise.clap hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=26}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.ceiling_surprise.clap hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=31}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=36}] run playsound luigis_mansion:entity.ceiling_surprise.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=38}] run playsound luigis_mansion:entity.ceiling_surprise.clap hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/ceiling_ghost/laugh
tag @s[scores={ActionTime=40}] remove laugh
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0