scoreboard players add @s[scores={ActionTime=40..}] ActionTime 1
scoreboard players add @s[scores={ActionTime=..40}] ActionTime 1
execute unless entity @s[scores={ActionTime=0..}] run scoreboard players set @s ActionTime 0
execute if entity @e[tag=illuminate_furniture,scores={Room=20}] run tag @s add illuminate_furniture
execute if entity @s[scores={ActionTime=1},tag=illuminate_furniture] run playsound luigis_mansion:furniture.crystal_ball.flash block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=10},tag=illuminate_furniture] run playsound luigis_mansion:furniture.crystal_ball.shine block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..40},tag=!illuminate_furniture] run stopsound @a[tag=same_room] block luigis_mansion:block.crystal_ball.shine
scoreboard players set @s[scores={ActionTime=..40},tag=!illuminate_furniture] ActionTime 0
tag @s remove illuminate_furniture
execute if entity @s[scores={ActionTime=1..}] positioned ^ ^1.93 ^1.44 run particle minecraft:firework ~ ~ ~ 0.2 0.1 0.2 0 1
tag @s[scores={ActionTime=100}] add visible
execute if entity @s[scores={ActionTime=100}] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
scoreboard players set @s[scores={ActionTime=100}] ClairvoyaSpoke 0
scoreboard players set @s[scores={ActionTime=100}] ActionTime 0