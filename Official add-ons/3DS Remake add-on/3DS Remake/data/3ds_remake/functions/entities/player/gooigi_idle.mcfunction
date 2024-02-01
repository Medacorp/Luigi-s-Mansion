function luigis_mansion:entities/player/memory/get with entity @s
execute unless data storage luigis_mansion:data my_memory.animation run scoreboard players add @s[tag=!warp,tag=!scanning,tag=!poltergust_selected,tag=!riding_poltergust,scores={Walk=0,Run=0,Sneak=0,Jump=0},tag=!sneak_pos] IdleTime 1
execute unless data storage luigis_mansion:data my_memory.animation unless entity @s[tag=!warp,tag=!scanning,tag=!poltergust_selected,tag=!riding_poltergust,scores={Walk=0,Run=0,Sneak=0,Jump=0},tag=!sneak_pos] run scoreboard players set @s IdleTime 0
execute unless data storage luigis_mansion:data my_memory.animation run tag @s remove cold_room
execute unless data storage luigis_mansion:data my_memory.animation run function #luigis_mansion:room/cold_room
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={IdleTime=20..,Health=..15}] add trigger_idle
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[scores={IdleTime=20..,Health=..15}] run function luigis_mansion:entities/player/animation/set/low_health_idle
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={IdleTime=20..,Health=16..},tag=cold_room] add trigger_idle
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[scores={IdleTime=20..,Health=16..},tag=cold_room] run function luigis_mansion:entities/player/animation/set/cold_room_idle
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={IdleTime=200..,Health=16..},tag=!cold_room] add trigger_idle
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[scores={IdleTime=200..,Health=16..},tag=!cold_room] run function luigis_mansion:entities/player/animation/set/high_health_idle
tag @s[tag=trigger_idle] add idle
tag @s remove trigger_idle
tag @s remove low_health
execute unless data storage luigis_mansion:data my_memory.animation run tag @s[scores={Health=..15}] add low_health
execute if data storage luigis_mansion:data my_memory.animation run function luigis_mansion:entities/player/animation with storage luigis_mansion:data my_memory.animation
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[tag=!new_poltergust_grabbed,tag=poltergust_grabbed] run function luigis_mansion:entities/player/animation/set/put_poltergust_away
execute unless data storage luigis_mansion:data my_memory.animation if entity @s[tag=new_poltergust_grabbed,tag=!poltergust_grabbed] run function luigis_mansion:entities/player/animation/set/grab_poltergust
execute if data storage luigis_mansion:data my_memory.animation if entity @s[tag=!new_poltergust_grabbed,tag=poltergust_grabbed] if entity @s[tag=idle] run function luigis_mansion:entities/player/animation/set/put_poltergust_away
execute if data storage luigis_mansion:data my_memory.animation if entity @s[tag=new_poltergust_grabbed,tag=!poltergust_grabbed] if entity @s[tag=idle] run function luigis_mansion:entities/player/animation/set/grab_poltergust
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory