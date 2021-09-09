execute as @e[tag=same_room,distance=..15,tag=!spectator] positioned ^ ^ ^15 run tag @s[distance=..18] add can_see_player
execute at @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] unless entity @e[tag=can_see_player,tag=!spectator,limit=1] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @e[tag=same_room,tag=can_see_player] remove can_see_player
execute if entity @s[tag=headless_run] run function luigis_mansion:entities/bowser/headless_run
execute if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] if entity @a[distance=..12,gamemode=!spectator] run function luigis_mansion:entities/bowser/select_closeby
execute if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] if entity @a[distance=12..,gamemode=!spectator] run function luigis_mansion:entities/bowser/select_distant

execute unless entity @s[tag=!walk,tag=!run] positioned ^ ^ ^2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute unless entity @s[tag=!walk,tag=!run] positioned ^1 ^ ^1 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute unless entity @s[tag=!walk,tag=!run] positioned ^-1 ^ ^1 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving

execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/breathe_fire
execute if entity @s[tag=vacuum] run function luigis_mansion:entities/bowser/vacuum
execute if entity @s[tag=throw_spikes] run function luigis_mansion:entities/bowser/tick/hidden/throw_spikes
execute if entity @s[tag=walk] run function luigis_mansion:entities/bowser/walk
execute if entity @s[tag=run] run function luigis_mansion:entities/bowser/run
execute if entity @s[tag=jump] run function luigis_mansion:entities/bowser/jump

execute positioned ^ ^-3 ^-2 as @e[distance=..3,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute positioned ^ ^-3 ^-2 as @a[distance=..3,gamemode=!spectator,tag=!vacuumed] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/bowser/collide
execute positioned ^ ^ ^-2 as @e[distance=..3,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute positioned ^ ^ ^-2 as @a[distance=..3,gamemode=!spectator,tag=!vacuumed] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/bowser/collide
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~-3 ~2 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~-3 ~1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~-3 ~1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~2 ~-3 ~ if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-2 ~-3 ~ if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~-3 ~-1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~-3 ~-1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~-3 ~-2 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/tick/hidden/destroy_pillar