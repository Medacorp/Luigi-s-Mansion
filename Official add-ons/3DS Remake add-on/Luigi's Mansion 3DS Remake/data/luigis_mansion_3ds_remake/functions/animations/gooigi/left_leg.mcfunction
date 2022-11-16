execute if entity @s[scores={KnockbackType=0,Pull=0..9}] unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming,tag=!low_health_idle] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[nbt=!{Small:1b},tag=!flipped_gravity] ^0.11 ^-2.34 ^ ~ ~
teleport @s[nbt={Small:1b},tag=!flipped_gravity] ^0.08 ^-1.34 ^ ~ ~
teleport @s[nbt=!{Small:1b},tag=flipped_gravity] ^-0.11 ^0.21 ^ ~ ~
teleport @s[nbt={Small:1b},tag=flipped_gravity] ^-0.08 ^0.85 ^ ~ ~

execute at @s run teleport @s[tag=sneak_pos,nbt=!{Small:1b}] ^ ^ ^-0.2 ~ ~
execute at @s run teleport @s[tag=sneak_pos,nbt={Small:1b}] ^ ^ ^-0.15 ~ ~
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

# Move animations
data modify entity @s[tag=riding_poltergust] Pose.Head[0] set value -30.0f
data modify entity @s[tag=riding_poltergust] Pose.Head[1] set value -30.0f
execute if entity @s[tag=sneaking,tag=!stop_model] run function luigis_mansion_3ds_remake:animations/gooigi/sneaking/left_leg
execute if entity @s[tag=walking,tag=!stop_model] run function luigis_mansion_3ds_remake:animations/gooigi/walking/left_leg
execute if entity @s[tag=running,tag=!stop_model] run function luigis_mansion_3ds_remake:animations/gooigi/running/left_leg
execute if entity @s[tag=swimming,tag=!stop_model] run function luigis_mansion_3ds_remake:animations/gooigi/swimming/left_leg

execute at @s[tag=nod] run function luigis_mansion_3ds_remake:animations/gooigi/nod/left_leg
execute at @s[tag=thinking] run function luigis_mansion_3ds_remake:animations/gooigi/thinking/left_leg
execute at @s[tag=sigh] run function luigis_mansion_3ds_remake:animations/gooigi/sigh/left_leg
execute at @s[tag=enthusiastic] run function luigis_mansion_3ds_remake:animations/gooigi/enthusiastic/left_leg
execute at @s[tag=answer_phone] run function luigis_mansion_3ds_remake:animations/gooigi/answer_phone/left_leg
execute at @s[tag=game_boy_horror] run function luigis_mansion_3ds_remake:animations/gooigi/game_boy_horror/left_leg
execute at @s[tag=inspect] run function luigis_mansion_3ds_remake:animations/gooigi/inspect/left_leg
execute at @s[tag=look] run function luigis_mansion_3ds_remake:animations/gooigi/look/left_leg
execute at @s[scores={KnockbackType=-9}] run function luigis_mansion_3ds_remake:animations/gooigi/search/chest/left_leg
execute at @s[scores={KnockbackType=-8}] run function luigis_mansion_3ds_remake:animations/gooigi/search/bash/left_leg
execute at @s[scores={KnockbackType=-7}] run function luigis_mansion_3ds_remake:animations/gooigi/search/hump/left_leg
execute at @s[scores={KnockbackType=-6..-5}] run function luigis_mansion_3ds_remake:animations/gooigi/search/knock/left_leg
execute at @s[scores={KnockbackType=-4..-3}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/bashed/left_leg
execute at @s[scores={KnockbackType=-2}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/freeze/left_leg
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/left_leg
execute at @s[scores={KnockbackType=1}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/small/left_leg
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/medium/left_leg
execute at @s[scores={KnockbackType=4}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/large/left_leg
execute at @s[scores={KnockbackType=5}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/burn/left_leg
execute at @s[scores={KnockbackType=6}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/soak/left_leg
execute at @s[scores={KnockbackType=7}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/freeze/left_leg
execute at @s[scores={KnockbackType=8..9}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/grab/left_leg
execute at @s[scores={KnockbackType=10}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/bite/left_leg
execute at @s[scores={KnockbackType=11}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/slip/left_leg
execute at @s[scores={KnockbackType=12..13}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/flee/left_leg

execute at @s[tag=cold_room_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/cold_room/left_leg
execute at @s[tag=high_health_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/high_health/left_leg
execute at @s[tag=low_health_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/low_health/left_leg

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/start/left_leg
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/left_leg