execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run tag @s add dead
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run tag @e[tag=king_boo] add dead
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} as @a[distance=..320] run function luigis_mansion:entities/king_boo/return/normal
execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} as @a[distance=320..] run function luigis_mansion:entities/king_boo/to_arena/normal
execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/bowser/collide

execute at @e[tag=king_boo,limit=1] run tag @a[gamemode=!spectator,sort=nearest,limit=1] add target
scoreboard players set #temp Move 10
execute at @s facing entity @a[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @a[tag=target,limit=1,distance=..8] run function luigis_mansion:entities/bowser/move_forward
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=20}] run function luigis_mansion:entities/bowser/spit_ice
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0