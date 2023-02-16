scoreboard players add @s IdleTime 1
tag @s remove cold_room
function #luigis_mansion:room/cold_room
execute if entity @s[scores={IdleTime=0}] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={IdleTime=20..,Health=..30},tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] add trigger_idle
execute if entity @s[scores={IdleTime=20..,Health=..30},tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] run function luigis_mansion:entities/player/animation/set/low_health_idle
tag @s[scores={IdleTime=20..,Health=31..},tag=cold_room,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle] add trigger_idle
execute if entity @s[scores={IdleTime=20..,Health=31..},tag=cold_room,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle] run function luigis_mansion:entities/player/animation/set/cold_room_idle
tag @s[scores={IdleTime=200..,Health=31..},tag=!cold_room,tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] add trigger_idle
execute if entity @s[scores={IdleTime=200..,Health=31..},tag=!cold_room,tag=!high_health_idle,tag=!low_health_idle,tag=!cold_room_idle] run function luigis_mansion:entities/player/animation/set/high_health_idle
tag @s[tag=trigger_idle] add idle
tag @s remove trigger_idle

execute if entity @s[scores={Animation=-4}] run function luigis_mansion:entities/player/animation/pulled
execute if entity @s[scores={Animation=-3}] run function luigis_mansion:entities/player/animation/put_poltergust_away
execute if entity @s[scores={Animation=-2}] run function luigis_mansion:entities/player/animation/grab_poltergust
execute if entity @s[scores={Animation=-1}] run function luigis_mansion:entities/player/animation/yelling
execute if entity @s[scores={Animation=1}] run function luigis_mansion:entities/player/animation/stand_still
execute if entity @s[scores={Animation=2}] run function luigis_mansion:entities/player/animation/low_health_idle
execute if entity @s[scores={Animation=3}] run function luigis_mansion:entities/player/animation/cold_room_idle
execute if entity @s[scores={Animation=4}] run function luigis_mansion:entities/player/animation/high_health_idle
execute if entity @s[scores={Animation=5}] run function luigis_mansion:entities/player/animation/nod
execute if entity @s[scores={Animation=6}] run function luigis_mansion:entities/player/animation/thinking
execute if entity @s[scores={Animation=7}] run function luigis_mansion:entities/player/animation/enthusiastic
execute if entity @s[scores={Animation=8}] run function luigis_mansion:entities/player/animation/sigh
execute if entity @s[scores={Animation=9}] run function luigis_mansion:entities/player/animation/game_boy_horror
execute if entity @s[scores={Animation=10}] run function luigis_mansion:entities/player/animation/inspect
execute if entity @s[scores={Animation=11}] run function luigis_mansion:entities/player/animation/look
execute if entity @s[scores={Animation=12}] run function luigis_mansion:entities/player/animation/answer_phone
execute if entity @s[scores={Animation=13..14}] run function luigis_mansion:entities/player/animation/door/open/push
execute if entity @s[scores={Animation=15..16}] run function luigis_mansion:entities/player/animation/door/open/pull
execute if entity @s[scores={Animation=17..18}] run function luigis_mansion:entities/player/animation/door/locked/push
execute if entity @s[scores={Animation=19..20}] run function luigis_mansion:entities/player/animation/door/locked/pull
execute if entity @s[scores={Animation=21..22}] run function luigis_mansion:entities/player/animation/door/unlock/push
execute if entity @s[scores={Animation=23..24}] run function luigis_mansion:entities/player/animation/door/unlock/pull
execute if entity @s[scores={Animation=25}] run function luigis_mansion:entities/player/animation/talk
execute if entity @s[scores={Animation=26}] run function luigis_mansion:entities/player/animation/revive
# 27 = small knockback
# 28 = medium knockback
# 29 = large knockback
# 30 = burn knockback
# 31 = soak knockback
# 32 = freeze knockback
# 33 = grabb knockback
# 34 = bite knockback
# 35 = slip knockback
# 36 = flee knockback
# 37..38 = fake door knockback
# 39 = scare
# 40 = freeze
# 41 = bashed
# 42 = knock search
execute if entity @s[scores={Animation=43}] run function luigis_mansion:entities/player/animation/hump
# 44 = bash search