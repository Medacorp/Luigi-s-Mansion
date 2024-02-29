execute store result entity @s[scores={Dialog=0}] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={Dialog=0}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={Dialog=0}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s data.initial_animation_progress positioned ~ ~-1.85 ~ run scoreboard players get @e[tag=rocking_chair,distance=..1,limit=1] Dialog
scoreboard players set @s[scores={Dialog=0}] Dialog 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..100}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run scoreboard players set @s[distance=..8] Dialog 1
tag @s[scores={Dialog=1}] remove visible
tag @s[scores={Dialog=2}] add visible
scoreboard players set @s[scores={Dialog=101}] AnimationProgress 0
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.neville.yawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=101}] VulnerableTime 60
scoreboard players set @s[scores={Dialog=161}] Dialog 0

execute positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,scores={Dialog=1..20},limit=1] at @s run teleport @s ^ ^ ^0.01
execute positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,scores={Dialog=21..60},limit=1] at @s run teleport @s ^ ^ ^-0.01
execute positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,scores={Dialog=61..80},limit=1] at @s run teleport @s ^ ^ ^0.01

data modify entity @s[scores={Dialog=101..160}] data.animation set value {namespace:"luigis_mansion",id:"yawn"}
data remove entity @s[scores={Dialog=101..160}] data.initial_animation_progress
data remove entity @s[scores={Dialog=0..1}] data.animation

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] run function luigis_mansion:entities/neville/collide