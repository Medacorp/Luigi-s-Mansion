scoreboard players add @s IdleTime 1
tag @s remove cold_room
function #luigis_mansion:room/cold_room
execute if entity @s[scores={IdleTime=0}] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={IdleTime=20..,Health=..15}] add trigger_idle
execute if entity @s[scores={IdleTime=20..,Health=..15}] run function luigis_mansion:entities/player/animation/set/low_health_idle
tag @s[scores={IdleTime=20..,Health=16..},tag=cold_room] add trigger_idle
execute if entity @s[scores={IdleTime=20..,Health=16..},tag=cold_room] run function luigis_mansion:entities/player/animation/set/cold_room_idle
tag @s[scores={IdleTime=200..,Health=16..},tag=!cold_room] add trigger_idle
execute if entity @s[scores={IdleTime=200..,Health=16..},tag=!cold_room] run function luigis_mansion:entities/player/animation/set/high_health_idle
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
execute if entity @s[scores={Animation=27}] run function luigis_mansion:entities/player/animation/knockback/small
execute if entity @s[scores={Animation=28}] run function luigis_mansion:entities/player/animation/knockback/medium
execute if entity @s[scores={Animation=29}] run function luigis_mansion:entities/player/animation/knockback/large
execute if entity @s[scores={Animation=30}] run function luigis_mansion:entities/player/animation/knockback/melt
execute if entity @s[scores={Animation=31}] run function luigis_mansion:entities/player/animation/knockback/soak
execute if entity @s[scores={Animation=32}] run function luigis_mansion:entities/player/animation/knockback/freeze
execute if entity @s[scores={Animation=33}] run function luigis_mansion:entities/player/animation/knockback/grab
execute if entity @s[scores={Animation=34}] run function luigis_mansion:entities/player/animation/knockback/bite
execute if entity @s[scores={Animation=35}] run function luigis_mansion:entities/player/animation/knockback/slip
execute if entity @s[scores={Animation=36}] run function luigis_mansion:entities/player/animation/knockback/flee
execute if entity @s[scores={Animation=37..38}] run function luigis_mansion:entities/player/animation/knockback/fake_door
execute if entity @s[scores={Animation=39}] run function luigis_mansion:entities/player/animation/scare/normal
execute if entity @s[scores={Animation=40}] run function luigis_mansion:entities/player/animation/scare/freeze
execute if entity @s[scores={Animation=41}] run function luigis_mansion:entities/player/animation/scare/bash
# 42 = knock search
execute if entity @s[scores={Animation=43}] run function luigis_mansion:entities/player/animation/hump
# 44 = bash search
# 45 = chest search