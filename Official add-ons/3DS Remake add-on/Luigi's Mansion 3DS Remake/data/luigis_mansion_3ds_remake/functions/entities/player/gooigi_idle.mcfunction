scoreboard players add @s IdleTime 1
tag @s remove cold_room
function #luigis_mansion:room/cold_room
execute if entity @s[scores={IdleTime=0}] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={IdleTime=20..,Health=..15},tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] add idle
execute if entity @s[scores={IdleTime=20..,Health=..15},tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] run function luigis_mansion:entities/player/animation/set/low_health_idle
tag @s[scores={IdleTime=20..,Health=16..},tag=cold_room,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle] add idle
execute if entity @s[scores={IdleTime=20..,Health=16..},tag=cold_room,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle] run function luigis_mansion:entities/player/animation/set/cold_room_idle
tag @s[scores={IdleTime=200..,Health=16..},tag=!cold_room,tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] add idle
execute if entity @s[scores={IdleTime=200..,Health=16..},tag=!cold_room,tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] run function luigis_mansion:entities/player/animation/set/high_health_idle
execute if entity @s[tag=nod] run function luigis_mansion:entities/player/animation/nod
execute if entity @s[tag=thinking] run function luigis_mansion:entities/player/animation/thinking
execute if entity @s[tag=enthusiastic] run function luigis_mansion:entities/player/animation/enthusiastic
execute if entity @s[tag=sigh] run function luigis_mansion:entities/player/animation/sigh
execute if entity @s[tag=game_boy_horror] run function luigis_mansion:entities/player/animation/game_boy_horror
execute if entity @s[tag=inspect] run function luigis_mansion:entities/player/animation/inspect
execute if entity @s[tag=look] run function luigis_mansion:entities/player/animation/look
execute if entity @s[tag=answer_phone] run function luigis_mansion:entities/player/animation/answer_phone
execute if entity @s[tag=low_health_idle] run function luigis_mansion:entities/player/animation/low_health_idle
execute if entity @s[tag=cold_room_idle] run function luigis_mansion:entities/player/animation/cold_room_idle
execute if entity @s[tag=high_health_idle] run function luigis_mansion:entities/player/animation/high_health_idle
execute if entity @s[tag=stand_still] run function luigis_mansion:entities/player/animation/stand_still