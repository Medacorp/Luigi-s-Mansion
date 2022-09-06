tag @s remove high_health_idle
tag @s remove low_health_idle
tag @s remove cold_room_idle
scoreboard players set @s[scores={IdleTime=1..}] IdleTime 0
scoreboard players set @s[tag=idle] IdleTime 0
tag @s remove idle