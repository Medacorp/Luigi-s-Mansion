execute as @e[tag=bogmires_shadow] at @s run function luigis_mansion:entities/bogmire/ai/mansion/normal/shadow

execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
scoreboard players add @s[scores={VulnerableTime=0,Dialog=..179}] Dialog 1
scoreboard players add @s[scores={VulnerableTime=0,Dialog=181..}] Dialog 1
data remove entity @s[scores={Dialog=2}] data.animation
tag @s[scores={Dialog=70,VulnerableTime=0}] remove visible
execute if entity @s[scores={Dialog=110,VulnerableTime=0}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/warp
execute if entity @s[scores={Dialog=182}] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"black_bogmire"}}},tag=same_room] add remove_from_existence
execute if entity @s[scores={Dialog=182}] run tag @e[tag=ball,tag=shadow,tag=same_room] add remove_from_existence
execute if entity @s[scores={Dialog=182}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=202}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
tag @s[scores={Dialog=212}] remove visible
execute if entity @s[scores={Dialog=222}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=242}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=262}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/instant_spawn
execute if entity @s[scores={Dialog=281}] run scoreboard players set @s Dialog 179

execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] if entity @s[tag=visible,tag=!shadow_hit] run playsound luigis_mansion:entity.bogmire.hit_by_shadow_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] run data modify entity @s[tag=visible] data.animation set value {namespace:"luigis_mansion",id:"shadow_hit"}
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] run scoreboard players set @s[tag=visible] VulnerableTime 280
execute positioned ~-0.5 ~ ~-0.5 if entity @s[tag=visible] run tag @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=!big] add remove_from_existence
execute positioned ~-1 ~-0.5 ~-1 if entity @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] if entity @s[tag=visible,tag=!shadow_hit] run playsound luigis_mansion:entity.bogmire.hit_by_shadow_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute positioned ~-1 ~-0.5 ~-1 if entity @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] run data modify entity @s[tag=visible] data.animation set value {namespace:"luigis_mansion",id:"big_shadow_hit"}
execute positioned ~-1 ~-0.5 ~-1 if entity @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] run scoreboard players set @s[tag=visible] VulnerableTime 280
execute positioned ~-1 ~-0.5 ~-1 if entity @s[tag=visible] run tag @e[dx=1,dy=3,dz=1,tag=shadow,tag=ball,tag=big] add remove_from_existence
scoreboard players set @s[scores={VulnerableTime=1}] Dialog 139
data remove entity @s[scores={VulnerableTime=1}] data.animation

execute if entity @s[scores={Sound=0},tag=visible] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=visible] Sound 30