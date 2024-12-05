function luigis_mansion:entities/luigi/get_owner_memory
execute unless data storage luigis_mansion:data my_memory.animation run scoreboard players add @s[tag=!poltergust_selected,tag=!riding_poltergust,tag=!walking,tag=!running,tag=!sneak_pos] IdleTime 1
execute unless data storage luigis_mansion:data my_memory.animation unless entity @s[tag=!poltergust_selected,tag=!riding_poltergust,tag=!walking,tag=!running,tag=!sneak_pos] run scoreboard players set @s IdleTime 0
execute unless data storage luigis_mansion:data my_memory.animation run function luigis_mansion:room/cold_room
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={IdleTime=20..,Health=..30}] add trigger_idle
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[scores={IdleTime=20..,Health=..30}] run function luigis_mansion:entities/luigi/animation/set/low_health_idle
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={IdleTime=20..,Health=31..},tag=cold_room] add trigger_idle
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[scores={IdleTime=20..,Health=31..},tag=cold_room] run function luigis_mansion:entities/luigi/animation/set/cold_room_idle
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={IdleTime=200..,Health=31..},tag=!cold_room] add trigger_idle
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[scores={IdleTime=200..,Health=31..},tag=!cold_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle
tag @s[tag=trigger_idle] add idle
tag @s remove trigger_idle
tag @s remove low_health
tag @s remove cold_room
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={Health=..30}] add low_health
execute if data storage luigis_mansion:data my_memory.animation run function luigis_mansion:entities/luigi/animation with storage luigis_mansion:data my_memory.animation
tag @s[tag=!keep_poltergust_grabbed] add new_poltergust_grabbed
execute if entity @s[tag=!keep_poltergust_grabbed] run function #luigis_mansion:entities/luigi/overwrite_poltergust_grabbed
tag @s remove keep_poltergust_grabbed
execute if data storage luigis_mansion:data my_memory unless data storage luigis_mansion:data my_memory.animation if entity @s[tag=!new_poltergust_grabbed,tag=poltergust_grabbed] run function luigis_mansion:entities/luigi/animation/set/put_poltergust_away
execute if data storage luigis_mansion:data my_memory unless data storage luigis_mansion:data my_memory.animation if entity @s[tag=new_poltergust_grabbed,tag=!poltergust_grabbed] run function luigis_mansion:entities/luigi/animation/set/grab_poltergust
execute if data storage luigis_mansion:data my_memory.animation if entity @s[tag=!new_poltergust_grabbed,tag=poltergust_grabbed] if entity @s[tag=idle] run function luigis_mansion:entities/luigi/animation/set/put_poltergust_away
execute if data storage luigis_mansion:data my_memory.animation if entity @s[tag=new_poltergust_grabbed,tag=!poltergust_grabbed] if entity @s[tag=idle] run function luigis_mansion:entities/luigi/animation/set/grab_poltergust
execute unless data storage luigis_mansion:data my_memory run function luigis_mansion:entities/luigi/get_owner_memory
data remove entity @s data.animation
execute if data storage luigis_mansion:data my_memory.animation run data modify entity @s data.animation set from storage luigis_mansion:data my_memory.animation
execute if data storage luigis_mansion:data my_memory run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory