execute as @e[tag=bogmires_shadow] at @s run function luigis_mansion:entities/bogmire/ai/mansion/normal/shadow

scoreboard players add @s[scores={VulnerableTime=0,Dialog=381..}] Dialog 1
scoreboard players add @s[scores={VulnerableTime=0,Dialog=..309}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=20}] add visible
execute if entity @s[scores={Dialog=20}] run summon minecraft:lightning_bolt ~ 40 ~
execute if entity @s[scores={Dialog=21}] positioned ^ ^-1.43 ^0.7 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=22}] positioned ^ ^-1.43 ^1.4 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=23}] positioned ^ ^-1.43 ^2.1 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=24}] positioned ^ ^-1.43 ^2.8 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=25}] positioned ^ ^-1.43 ^3.5 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=26}] positioned ^ ^-1.43 ^4.2 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=27}] positioned ^ ^-1.43 ^4.9 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=28}] positioned ^ ^-1.43 ^5.6 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=29}] positioned ^ ^-1.43 ^6.3 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=30}] positioned ^ ^-1.43 ^7 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=31}] positioned ^ ^-1.43 ^7.7 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=32}] positioned ^ ^-1.43 ^8.4 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=33}] positioned ^ ^-1.43 ^9.1 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=34}] positioned ^ ^-1.43 ^9.8 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=35}] positioned ^ ^-1.43 ^10.5 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=36}] positioned ^ ^-1.43 ^11.2 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=37}] positioned ^ ^-1.43 ^11.9 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=38}] positioned ^ ^-1.43 ^12.6 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=39}] positioned ^ ^-1.43 ^13.3 run function luigis_mansion:entities/bogmire/create_shadow/intro
execute if entity @s[scores={Dialog=40}] run data modify storage luigis_mansion:data entity set value {tags:["no_dialog_freeze","not_this_ghost"]}
execute if entity @s[scores={Dialog=40}] positioned ^ ^ ^14 run function luigis_mansion:spawn_entities/ghost/black_bogmire/big
execute if entity @s[scores={Dialog=40}] run tag @e[tag=bogmires_shadow] add vanish
execute if entity @s[scores={Dialog=41..170}] run scoreboard players set @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"black_bogmire"}}},scores={ActionTime=131..},limit=1] ActionTime 130
tag @s[scores={Dialog=80}] remove visible

data remove entity @s[scores={Dialog=200}] data.animation
tag @s[scores={Dialog=270,VulnerableTime=0}] remove visible
execute if entity @s[scores={Dialog=310,VulnerableTime=0}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/warp
execute if entity @s[scores={Dialog=382}] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"black_bogmire"}}},tag=same_room] add remove_from_existence
execute if entity @s[scores={Dialog=382}] run tag @e[tag=ball,tag=shadow,tag=same_room] add remove_from_existence
execute if entity @s[scores={Dialog=382}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=402}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
tag @s[scores={Dialog=412}] remove visible
execute if entity @s[scores={Dialog=422}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=442}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=462}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=481}] run scoreboard players set @s Dialog 309

execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] if entity @s[tag=visible,tag=!shadow_hit] run playsound luigis_mansion:entity.bogmire.hit_by_shadow_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] run data modify entity @s[tag=visible] data.animation set value {namespace:"luigis_mansion",id:"shadow_hit"}
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] run scoreboard players set @s[tag=visible] VulnerableTime 280
execute positioned ~-0.5 ~ ~-0.5 if entity @s[tag=visible] run tag @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] add remove_from_existence
execute positioned ~-1 ~-0.5 ~-1 if entity @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] if entity @s[tag=visible,tag=!shadow_hit] run playsound luigis_mansion:entity.bogmire.hit_by_shadow_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute positioned ~-1 ~-0.5 ~-1 if entity @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] run data modify entity @s[tag=visible] data.animation set value {namespace:"luigis_mansion",id:"big_shadow_hit"}
execute positioned ~-1 ~-0.5 ~-1 if entity @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] run scoreboard players set @s[tag=visible] VulnerableTime 280
execute positioned ~-1 ~-0.5 ~-1 if entity @s[tag=visible] run tag @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] add remove_from_existence
scoreboard players set @s[scores={VulnerableTime=1}] Dialog 269
data remove entity @s[scores={VulnerableTime=1}] data.animation
execute if entity @s[scores={VulnerableTime=1..},tag=in_vacuum] run tag @e[tag=bogmires_shadow] add remove_from_existence

execute if entity @s[scores={Sound=0},tag=visible] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=visible] Sound 30