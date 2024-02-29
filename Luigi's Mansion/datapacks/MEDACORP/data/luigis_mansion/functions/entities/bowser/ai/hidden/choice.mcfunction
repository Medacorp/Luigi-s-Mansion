execute positioned as @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] store result score #temp2 Time run data get entity @s Rotation[0]
execute positioned as @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] store result score #temp Time run data get entity @s Rotation[0]
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] run scoreboard players operation #temp Time -= #temp2 Time
scoreboard players reset #temp2 Time
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] if score #temp Time matches 180.. run scoreboard players remove #temp Time 360

execute if score #temp Time matches -3..3 unless entity @s[scores={ActionTime=1..}] if entity @a[distance=..12,tag=!spectator] run function luigis_mansion:entities/bowser/select_attack
execute if score #temp Time matches -3..3 unless entity @s[scores={ActionTime=1..}] unless entity @a[distance=..12,tag=!spectator] if entity @a[distance=12..,tag=!spectator] unless entity @e[tag=spike_ball,limit=1] run tag @s add throw_fast_spike_balls
execute if score #temp Time matches -3..3 unless entity @s[scores={ActionTime=1..}] unless entity @a[distance=..12,tag=!spectator] if entity @a[distance=12..,tag=!spectator] if entity @e[tag=spike_ball,limit=1] run function luigis_mansion:entities/bowser/select_move
execute if score #temp Time matches -90..90 unless score #temp Time matches -3..3 unless entity @s[scores={ActionTime=1..}] run tag @s add turn_around
execute unless score #temp Time matches -90..90 unless entity @s[scores={ActionTime=1..}] positioned ^ ^-3 ^-4 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..3,limit=1] run tag @s add tail_attack
execute unless score #temp Time matches -90..90 if entity @s[tag=!tail_attack] unless entity @s[scores={ActionTime=1..}] run tag @s add look_around
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] run scoreboard players operation @s HomeRotation = #temp Time
scoreboard players reset #temp Time

execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~-3 ~2 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~-3 ~1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~-3 ~1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~2 ~-3 ~ if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-2 ~-3 ~ if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~-3 ~-1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~-3 ~-1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~-3 ~-2 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar