scoreboard players add @s IdleTime 1
tag @s remove cold_room
function #luigis_mansion:room/cold_room
execute if entity @s[scores={IdleTime=20..,Health=..30}] run function luigis_mansion:entities/player/idle/low_health
execute if entity @s[scores={IdleTime=20..,Health=31..},tag=cold_room] run function luigis_mansion:entities/player/idle/cold_room
execute if entity @s[scores={IdleTime=20..,Health=31..},tag=!cold_room] run function luigis_mansion:entities/player/idle/high_health