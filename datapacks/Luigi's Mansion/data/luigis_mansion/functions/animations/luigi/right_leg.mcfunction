tag @s[tag=low_health,tag=!looking_at_map] add sneak_pos
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
execute if entity @s[tag=sneaking,tag=!looking_at_map,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/sneaking/right_leg
execute if entity @s[tag=walking,tag=!looking_at_map,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/walking/right_leg
execute if entity @s[tag=running,tag=!looking_at_map,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/running/right_leg
execute if entity @s[tag=swimming,tag=!looking_at_map,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/swimming/right_leg

execute at @s[tag=nod] run function luigis_mansion:animations/luigi/nod/right_leg
execute at @s[tag=thinking] run function luigis_mansion:animations/luigi/thinking/right_leg
execute at @s[tag=sigh] run function luigis_mansion:animations/luigi/sigh/right_leg
execute at @s[tag=enthusiastic] run function luigis_mansion:animations/luigi/enthusiastic/right_leg
execute at @s[tag=answer_phone] run function luigis_mansion:animations/luigi/answer_phone/right_leg
execute at @s[tag=gameboy_horror] run function luigis_mansion:animations/luigi/gameboy_horror/right_leg
execute at @s[tag=inspect] run function luigis_mansion:animations/luigi/inspect/right_leg
execute at @s[scores={KnockbackType=-8}] run function luigis_mansion:animations/luigi/search/bash/right_leg
execute at @s[scores={KnockbackType=-7}] run function luigis_mansion:animations/luigi/search/hump/right_leg
execute at @s[scores={KnockbackType=-6..-5}] run function luigis_mansion:animations/luigi/search/knock/right_leg
execute at @s[scores={KnockbackType=-4..-3}] run function luigis_mansion:animations/luigi/scared/bashed/right_leg
execute at @s[scores={KnockbackType=-2}] run function luigis_mansion:animations/luigi/scared/freeze/right_leg
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion:animations/luigi/scared/right_leg
execute at @s[scores={KnockbackType=1}] run function luigis_mansion:animations/luigi/knockback/small/right_leg
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion:animations/luigi/knockback/medium/right_leg
execute at @s[scores={KnockbackType=4}] run function luigis_mansion:animations/luigi/knockback/large/right_leg
execute at @s[scores={KnockbackType=5}] run function luigis_mansion:animations/luigi/knockback/burn/right_leg
execute at @s[scores={KnockbackType=6}] run function luigis_mansion:animations/luigi/knockback/soak/right_leg
execute at @s[scores={KnockbackType=7}] run function luigis_mansion:animations/luigi/knockback/freeze/right_leg
execute at @s[scores={KnockbackType=8..9}] run function luigis_mansion:animations/luigi/knockback/grab/right_leg
execute at @s[scores={KnockbackType=10}] run function luigis_mansion:animations/luigi/knockback/bite/right_leg
execute at @s[scores={KnockbackType=11}] run function luigis_mansion:animations/luigi/knockback/slip/right_leg

execute at @s[tag=cold_room_idle] run function luigis_mansion:animations/luigi/idle/cold_room/right_leg
execute at @s[tag=high_health_idle] run function luigis_mansion:animations/luigi/idle/high_health/right_leg
execute at @s[tag=low_health_idle] run function luigis_mansion:animations/luigi/idle/low_health/right_leg

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/start/right_leg
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/right_leg