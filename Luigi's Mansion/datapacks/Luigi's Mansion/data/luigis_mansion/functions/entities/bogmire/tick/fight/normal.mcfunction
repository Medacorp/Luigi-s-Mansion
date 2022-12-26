execute as @e[tag=bogmires_shadow] at @s run function luigis_mansion:entities/bogmire/shadow

execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bogmire/battle_intro/normal
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0}] Dialog 1
scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0,Dialog=..179},tag=!shadow_hit] Dialog 1
scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0,Dialog=181..},tag=!shadow_hit] Dialog 1
tag @s[scores={Dialog=2}] remove vanish_flee
execute if entity @s[tag=intro_done,scores={Dialog=140},tag=!shadow_hit] run function luigis_mansion:entities/ghost/turn_invisible
execute if entity @s[tag=intro_done,scores={Dialog=180},tag=!shadow_hit] run function luigis_mansion:entities/bogmire/warp/normal
execute if entity @s[tag=intro_done,scores={Dialog=182}] run tag @e[tag=black_bogmire] add dead
execute if entity @s[tag=intro_done,scores={Dialog=182}] run tag @e[tag=ball,tag=shadow] add dead
execute if entity @s[tag=intro_done,scores={Dialog=182}] run function luigis_mansion:entities/bogmire/instant_spawn/normal
execute if entity @s[tag=intro_done,scores={Dialog=202}] run function luigis_mansion:entities/bogmire/instant_spawn/normal
execute if entity @s[tag=intro_done,scores={Dialog=212},tag=!shadow_hit] run function luigis_mansion:entities/ghost/turn_invisible
execute if entity @s[tag=intro_done,scores={Dialog=222}] run function luigis_mansion:entities/bogmire/instant_spawn/normal
execute if entity @s[tag=intro_done,scores={Dialog=242}] run function luigis_mansion:entities/bogmire/instant_spawn/normal
execute if entity @s[tag=intro_done,scores={Dialog=262}] run function luigis_mansion:entities/bogmire/instant_spawn/normal
execute if entity @s[tag=intro_done,scores={Dialog=182..}] run scoreboard players set @e[tag=black_bogmire,limit=1,scores={SpawnTime=..120}] SpawnTime 120
execute if entity @s[tag=intro_done,scores={Dialog=281}] run scoreboard players set @s Dialog 179

execute align xyz if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball] if entity @s[tag=visible,tag=!shadow_hit] run playsound luigis_mansion:entity.bogmire.hit_by_shadow_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute align xyz if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball] run tag @s[tag=visible] add shadow_hit
execute align xyz if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball,tag=big] run tag @s[tag=visible] add big_shadow
execute align xyz if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball] run scoreboard players set @s[tag=visible] VulnerableTime 280
execute align xyz if entity @s[tag=visible] run tag @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball] add dead
scoreboard players set @s[scores={VulnerableTime=1}] Dialog 139
tag @s[scores={VulnerableTime=1}] remove shadow_hit