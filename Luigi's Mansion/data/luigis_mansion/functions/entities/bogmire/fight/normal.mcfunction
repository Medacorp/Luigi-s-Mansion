execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} run tag @s add dead
execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} as @a[distance=..80] run function luigis_mansion:entities/bogmire/return
execute unless data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:1b} as @a[distance=80..] run function luigis_mansion:entities/bogmire/to_arena
execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bogmire/battle_intro/normal
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0}] Dialog 1
scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0,Dialog=..179}] Dialog 1
scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0,Dialog=181..}] Dialog 1
tag @s[scores={Dialog=2}] remove vanish_flee
execute if entity @s[tag=intro_done,scores={Dialog=140}] run function luigis_mansion:entities/bogmire/turn_invisible
execute if entity @s[tag=intro_done,scores={Dialog=180}] run function luigis_mansion:entities/bogmire/warp
execute if entity @s[tag=intro_done,scores={Dialog=182}] run tag @e[tag=black_bogmire] add dead
execute if entity @s[tag=intro_done,scores={Dialog=182}] run function luigis_mansion:entities/bogmire/instant_spawn
execute if entity @s[tag=intro_done,scores={Dialog=202}] run function luigis_mansion:entities/bogmire/instant_spawn
execute if entity @s[tag=intro_done,scores={Dialog=222}] run function luigis_mansion:entities/bogmire/instant_spawn
execute if entity @s[tag=intro_done,scores={Dialog=242}] run function luigis_mansion:entities/bogmire/instant_spawn
execute if entity @s[tag=intro_done,scores={Dialog=262}] run function luigis_mansion:entities/bogmire/instant_spawn
execute if entity @s[tag=intro_done,scores={Dialog=182..}] run scoreboard players set @e[tag=black_bogmire,limit=1,scores={SpawnTime=..120}] SpawnTime 120
execute if entity @s[tag=intro_done,scores={Dialog=281}] run scoreboard players set @s Dialog 179

execute if entity @e[distance=..0.7,tag=shadow] run tag @s[tag=visible] add shadow_hit
execute if entity @e[distance=..0.7,tag=shadow] run scoreboard players set @s[tag=visible] VulnerableTime 280
scoreboard players set @s[scores={VulnerableTime=1}] Dialog 139
tag @s[scores={VulnerableTime=1}] remove shadow_hit