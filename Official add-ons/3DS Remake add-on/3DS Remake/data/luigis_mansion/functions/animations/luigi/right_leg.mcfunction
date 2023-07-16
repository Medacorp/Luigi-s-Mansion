execute if entity @s[scores={Animation=-3..3}] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[nbt=!{Small:1b},tag=!flipped_gravity] ^-0.11 ^-2.34 ^ ~ ~
teleport @s[nbt={Small:1b},tag=!flipped_gravity] ^-0.08 ^-1.34 ^ ~ ~
teleport @s[nbt=!{Small:1b},tag=flipped_gravity] ^0.11 ^0.21 ^ ~ ~
teleport @s[nbt={Small:1b},tag=flipped_gravity] ^0.08 ^0.85 ^ ~ ~

execute at @s run teleport @s[tag=sneak_pos,nbt=!{Small:1b}] ^ ^ ^-0.2 ~ ~
execute at @s run teleport @s[tag=sneak_pos,nbt={Small:1b}] ^ ^ ^-0.15 ~ ~
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

# Move animations
data modify entity @s[tag=riding_poltergust] Pose.Head[0] set value -30.0f
data modify entity @s[tag=riding_poltergust] Pose.Head[1] set value 30.0f
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function luigis_mansion:animations/luigi/sneaking/right_leg
execute if entity @s[tag=walking,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function luigis_mansion:animations/luigi/walking/right_leg
execute if entity @s[tag=running,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function luigis_mansion:animations/luigi/running/right_leg
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function luigis_mansion:animations/luigi/swimming/right_leg

execute at @s[scores={Animation=-4}] run function luigis_mansion:animations/luigi/pulled/right_leg
execute at @s[scores={Animation=2}] run function luigis_mansion:animations/luigi/idle/low_health/right_leg
execute at @s[scores={Animation=3}] run function luigis_mansion:animations/luigi/idle/cold_room/right_leg
execute at @s[scores={Animation=4}] run function luigis_mansion:animations/luigi/idle/high_health/right_leg
execute at @s[scores={Animation=5}] run function luigis_mansion:animations/luigi/nod/right_leg
execute at @s[scores={Animation=6}] run function luigis_mansion:animations/luigi/thinking/right_leg
execute at @s[scores={Animation=7}] run function luigis_mansion:animations/luigi/enthusiastic/right_leg
execute at @s[scores={Animation=8}] run function luigis_mansion:animations/luigi/sigh/right_leg
execute at @s[scores={Animation=9}] run function luigis_mansion:animations/luigi/game_boy_horror/right_leg
execute at @s[scores={Animation=10}] run function luigis_mansion:animations/luigi/inspect/right_leg
execute at @s[scores={Animation=11}] run function luigis_mansion:animations/luigi/look/right_leg
execute at @s[scores={Animation=12}] run function luigis_mansion:animations/luigi/answer_phone/right_leg
execute at @s[scores={Animation=13..14}] run function luigis_mansion:animations/luigi/door/push/open/right_leg
execute at @s[scores={Animation=15..16}] run function luigis_mansion:animations/luigi/door/pull/open/right_leg
execute at @s[scores={Animation=25},tag=!low_health] run function luigis_mansion:animations/luigi/talk/high_health/right_leg
execute at @s[scores={Animation=25},tag=low_health] run function luigis_mansion:animations/luigi/talk/low_health/right_leg
execute at @s[scores={Animation=26}] run function luigis_mansion:animations/luigi/revive/right_leg
execute at @s[scores={Animation=27}] run function luigis_mansion:animations/luigi/knockback/small/right_leg
execute at @s[scores={Animation=28}] run function luigis_mansion:animations/luigi/knockback/medium/right_leg
execute at @s[scores={Animation=29}] run function luigis_mansion:animations/luigi/knockback/large/right_leg
execute at @s[scores={Animation=30}] run function luigis_mansion:animations/luigi/knockback/burn/right_leg
execute at @s[scores={Animation=31}] run function luigis_mansion:animations/luigi/knockback/soak/right_leg
execute at @s[scores={Animation=32}] run function luigis_mansion:animations/luigi/knockback/freeze/right_leg
execute at @s[scores={Animation=33}] run function luigis_mansion:animations/luigi/knockback/grab/right_leg
execute at @s[scores={Animation=34}] run function luigis_mansion:animations/luigi/knockback/bite/right_leg
execute at @s[scores={Animation=35}] run function luigis_mansion:animations/luigi/knockback/slip/right_leg
execute at @s[scores={Animation=36}] run function luigis_mansion:animations/luigi/knockback/flee/right_leg
execute at @s[scores={Animation=37..38}] run function luigis_mansion:animations/luigi/knockback/fake_door/right_leg
execute at @s[scores={Animation=39}] run function luigis_mansion:animations/luigi/scared/right_leg
execute at @s[scores={Animation=40}] run function luigis_mansion:animations/luigi/scared/freeze/right_leg
execute at @s[scores={Animation=41}] run function luigis_mansion:animations/luigi/scared/bashed/right_leg
execute at @s[scores={Animation=42}] run function luigis_mansion:animations/luigi/search/knock/right_leg
execute at @s[scores={Animation=43}] run function luigis_mansion:animations/luigi/search/hump/right_leg
execute at @s[scores={Animation=44}] run function luigis_mansion:animations/luigi/search/bash/right_leg
execute at @s[scores={Animation=45}] run function 3ds_remake:animations/luigi/search/chest/right_leg