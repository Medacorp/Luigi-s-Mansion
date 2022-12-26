scoreboard players add @s[scores={Dialog=42..},tag=!vanish] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] run scoreboard players add @s[scores={Dialog=41}] Dialog 1
scoreboard players add @s[scores={Dialog=22..40}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] run scoreboard players add @s[scores={Dialog=21}] Dialog 1
scoreboard players add @s[scores={Dialog=2..20}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 run tag @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] add collision
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[tag=!visible] run function luigis_mansion:entities/ghost/turn_visible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/ghost/turn_invisible_partially
execute if entity @s[scores={Dialog=21}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/ghost/turn_invisible_partially
execute if entity @s[scores={Dialog=41}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/ghost/turn_invisible_partially
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/slim_bankshot/tick/normal/path
execute if entity @s[scores={Dialog=2}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=2}] AnimationProg 0
scoreboard players set @s[scores={Dialog=2,PathStep=9..100}] PathStep 1
execute if entity @s[scores={Dialog=21}] run function luigis_mansion:entities/slim_bankshot/tick/normal/path
execute if entity @s[scores={Dialog=22}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=22}] AnimationProg 0
scoreboard players set @s[scores={Dialog=22,PathStep=9..100}] PathStep 1
execute if entity @s[scores={Dialog=41}] run function luigis_mansion:entities/slim_bankshot/tick/normal/path
execute if entity @s[scores={Dialog=42}] run playsound luigis_mansion:entity.slim_bankshot.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=42}] AnimationProg 0
scoreboard players set @s[scores={Dialog=42,PathStep=9..100}] PathStep 1
scoreboard players set @s[scores={Dialog=80}] VulnerableTime 60
scoreboard players set @s[scores={Dialog=82}] AnimationProg 0
scoreboard players set @s[scores={Dialog=142}] Dialog 41
execute if entity @s[scores={Dialog=40..,Sound=0}] run playsound luigis_mansion:entity.slim_bankshot.complain2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=40..,Sound=0}] run scoreboard players set @s Sound 10

execute if entity @s[scores={Dialog=2..20}] run function luigis_mansion:animations/slim_bankshot/hit
execute if entity @s[scores={Dialog=22..40}] run function luigis_mansion:animations/slim_bankshot/hit
execute if entity @s[scores={Dialog=42..81}] run function luigis_mansion:animations/slim_bankshot/ko
execute if entity @s[scores={Dialog=82..141}] run function luigis_mansion:animations/slim_bankshot/complain