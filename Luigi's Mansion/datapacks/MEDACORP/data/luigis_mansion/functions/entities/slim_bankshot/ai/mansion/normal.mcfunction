scoreboard players add @s[scores={Dialog=42..},tag=!vanish] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] run scoreboard players add @s[scores={Dialog=41}] Dialog 1
scoreboard players add @s[scores={Dialog=22..40}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] run scoreboard players add @s[scores={Dialog=21}] Dialog 1
scoreboard players add @s[scores={Dialog=2..20}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 if entity @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute positioned ~-0.5 ~-1.1875 ~-0.5 run tag @e[type=minecraft:armor_stand,tag=billiards_ball,dx=0,dy=3,dz=0] add collision
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s add visible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=21}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=41}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible

execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/slim_bankshot/ai/mansion/normal/shoot
execute if entity @s[scores={Dialog=2}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=2}] TargetTask 0
tag @s[scores={Dialog=2}] remove reached_target
execute if entity @s[scores={Dialog=21}] run function luigis_mansion:entities/slim_bankshot/ai/mansion/normal/shoot
execute if entity @s[scores={Dialog=22}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=22}] TargetTask 0
tag @s[scores={Dialog=22}] remove reached_target
execute if entity @s[scores={Dialog=41}] run function luigis_mansion:entities/slim_bankshot/ai/mansion/normal/shoot
execute if entity @s[scores={Dialog=42}] run playsound luigis_mansion:entity.slim_bankshot.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=42}] TargetTask 0
tag @s[scores={Dialog=42}] remove reached_target
scoreboard players set @s[scores={Dialog=80}] VulnerableTime 60
scoreboard players set @s[scores={Dialog=82}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=142}] Dialog 41
execute if entity @s[scores={Dialog=40..,Sound=0}] run playsound luigis_mansion:entity.slim_bankshot.complain2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=40..,Sound=0}] run scoreboard players set @s Sound 10

data remove entity @s data.animation
data modify entity @s[scores={ActionTime=30..89}] data.animation set value {namespace:"luigis_mansion",id:"play"}
data modify entity @s[scores={Dialog=2..20}] data.animation set value {namespace:"luigis_mansion",id:"hit"}
data modify entity @s[scores={Dialog=22..40}] data.animation set value {namespace:"luigis_mansion",id:"hit"}
data modify entity @s[scores={Dialog=42..81}] data.animation set value {namespace:"luigis_mansion",id:"knocked_out"}
data modify entity @s[scores={Dialog=82..141}] data.animation set value {namespace:"luigis_mansion",id:"complain"}