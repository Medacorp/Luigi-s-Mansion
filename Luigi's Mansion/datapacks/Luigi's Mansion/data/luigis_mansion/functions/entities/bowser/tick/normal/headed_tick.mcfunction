execute positioned as @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] store result score #temp2 Time run data get entity @s Rotation[0]
execute positioned as @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] store result score #temp Time run data get entity @s Rotation[0]
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] run scoreboard players operation #temp Time -= #temp2 Time
scoreboard players reset #temp2 Time
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] if score #temp Time matches 180.. run scoreboard players remove #temp Time 360

execute if entity @s[tag=headless_run] run function luigis_mansion:entities/bowser/headless_run
execute if score #temp Time matches -3..3 if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] if entity @a[distance=..12,tag=!spectator] run function luigis_mansion:entities/bowser/select_closeby
execute if score #temp Time matches -3..3 if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] unless entity @a[distance=..12,tag=!spectator] if entity @a[distance=12..,tag=!spectator] run function luigis_mansion:entities/bowser/select_distant
execute if score #temp Time matches -90..90 unless score #temp Time matches -3..3 if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] run tag @s add turn_around
execute unless score #temp Time matches -90..90 if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] positioned ^ ^-3 ^-4 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..3,limit=1] run tag @s add tail_attack
execute unless score #temp Time matches -90..90 if entity @s[tag=intro_done,tag=!tail_attack] unless entity @s[scores={ActionTime=1..}] run tag @s add look_around
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] run scoreboard players operation @s HomeRot = #temp Time
scoreboard players reset #temp Time

execute unless entity @s[tag=!walk,tag=!run] positioned ^ ^ ^2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute unless entity @s[tag=!walk,tag=!run] positioned ^1 ^ ^1 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute unless entity @s[tag=!walk,tag=!run] positioned ^-1 ^ ^1 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving

execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/breathe_fire
execute if entity @s[tag=vacuum] run function luigis_mansion:entities/bowser/vacuum
execute if entity @s[tag=throw_spikes] run function luigis_mansion:entities/bowser/tick/normal/throw_spikes
execute if entity @s[tag=walk] run function luigis_mansion:entities/bowser/walk
execute if entity @s[tag=run] run function luigis_mansion:entities/bowser/run
execute if entity @s[tag=jump] run function luigis_mansion:entities/bowser/jump
execute if entity @s[tag=tail_attack] run function luigis_mansion:entities/bowser/tail_attack
execute if entity @s[tag=look_around] run function luigis_mansion:entities/bowser/look_around
execute if entity @s[tag=turn_around] run function luigis_mansion:entities/bowser/turn_around

execute positioned ^ ^-2 ^-1 as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute positioned ^ ^-2 ^-1 if entity @s[tag=!dead,tag=!captured,tag=!removed_from_existence] as @a[distance=..3,scores={Invulnerable=0},tag=!spectator,tag=!vacuumed] run function luigis_mansion:entities/bowser/collide
execute positioned ^ ^ ^-2 as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute positioned ^ ^ ^-2 if entity @s[tag=!dead,tag=!captured,tag=!removed_from_existence] as @a[distance=..3,scores={Invulnerable=0},tag=!spectator,tag=!vacuumed] run function luigis_mansion:entities/bowser/collide
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~-3 ~2 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~-3 ~1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~-3 ~1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~2 ~-3 ~ if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-2 ~-3 ~ if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~-3 ~-1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~-3 ~-1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~-3 ~-2 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/normal/destroy_pillar