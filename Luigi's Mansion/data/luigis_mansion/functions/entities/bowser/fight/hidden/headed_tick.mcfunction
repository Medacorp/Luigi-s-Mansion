execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run tag @s add dead
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run tag @e[tag=king_boo] add dead
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} as @a[distance=..320] run function luigis_mansion:entities/king_boo/return/normal
execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} as @a[distance=320..] run function luigis_mansion:entities/king_boo/to_arena/normal
execute as @a[distance=..15,gamemode=!spectator] positioned ^ ^ ^15 run tag @s[distance=..18] add can_see_player
execute if entity @s[tag=!headless_run] unless entity @s[scores={ActionTime=1..}] unless entity @a[tag=can_see_player,limit=1] facing entity @a[gamemode=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @a[tag=can_see_player] remove can_see_player
teleport @e[tag=bowser_body] ~ ~ ~ ~ ~
execute unless entity @s[scores={ActionTime=1..}] run teleport @s ~ 41 ~
execute if entity @s[tag=headless_run] run function luigis_mansion:entities/bowser/headless_run
execute if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] if entity @a[distance=..12,gamemode=!spectator] run function luigis_mansion:entities/bowser/select_closeby
execute if entity @s[tag=intro_done] unless entity @s[scores={ActionTime=1..}] if entity @a[distance=12..,gamemode=!spectator] run function luigis_mansion:entities/bowser/select_distant

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/bowser/collide

execute unless entity @s[tag=!walk,tag=!run] positioned ^ ^ ^2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute unless entity @s[tag=!walk,tag=!run] positioned ^1 ^ ^1 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute unless entity @s[tag=!walk,tag=!run] positioned ^-1 ^ ^1 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving

execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/breathe_fire
execute if entity @s[tag=vacuum] run function luigis_mansion:entities/bowser/vacuum
execute if entity @s[tag=throw_spikes] run function luigis_mansion:entities/bowser/fight/hidden/throw_spikes
execute if entity @s[tag=walk] run function luigis_mansion:entities/bowser/walk
execute if entity @s[tag=run] run function luigis_mansion:entities/bowser/run
execute if entity @s[tag=jump] run function luigis_mansion:entities/bowser/jump

execute as @a[distance=..3,gamemode=!spectator,tag=!vacuumed] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/bowser/collide
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~ ~2 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~ ~1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~ ~1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~2 ~ ~ if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-2 ~ ~ if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~ ~-1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~ ~-1 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~ ~-2 if block ~ ~1 ~ minecraft:clay run function luigis_mansion:entities/bowser/destroy_pillar