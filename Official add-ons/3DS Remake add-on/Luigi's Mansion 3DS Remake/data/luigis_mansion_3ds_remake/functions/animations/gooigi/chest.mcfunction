execute if entity @s[scores={KnockbackType=0,Pull=0..9}] unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming,tag=!low_health_idle] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-1.76 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-0.9 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-0.96 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^-0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^-0.34 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.46 ^ ~ ~

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute at @s[tag=yelling] run function luigis_mansion_3ds_remake:animations/gooigi/wave/chest
execute at @s[tag=revive] run function luigis_mansion_3ds_remake:animations/gooigi/revive/chest
execute at @s[tag=nod] run function luigis_mansion_3ds_remake:animations/gooigi/nod/chest
execute at @s[tag=thinking] run function luigis_mansion_3ds_remake:animations/gooigi/thinking/chest
execute at @s[tag=sigh] run function luigis_mansion_3ds_remake:animations/gooigi/sigh/chest
execute at @s[tag=enthusiastic] run function luigis_mansion_3ds_remake:animations/gooigi/enthusiastic/chest
execute at @s[tag=answer_phone] run function luigis_mansion_3ds_remake:animations/gooigi/answer_phone/chest
execute at @s[tag=game_boy_horror] run function luigis_mansion_3ds_remake:animations/gooigi/game_boy_horror/chest
execute at @s[tag=inspect] run function luigis_mansion_3ds_remake:animations/gooigi/inspect/chest
execute at @s[tag=look] run function luigis_mansion_3ds_remake:animations/gooigi/look/chest
execute at @s[scores={KnockbackType=-9}] run function luigis_mansion_3ds_remake:animations/gooigi/search/chest/chest
execute at @s[scores={KnockbackType=-8}] run function luigis_mansion_3ds_remake:animations/gooigi/search/bash/chest
execute at @s[scores={KnockbackType=-7}] run function luigis_mansion_3ds_remake:animations/gooigi/search/hump/chest
execute at @s[scores={KnockbackType=-6..-5}] run function luigis_mansion_3ds_remake:animations/gooigi/search/knock/chest
execute at @s[scores={KnockbackType=-4..-3}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/bashed/chest
execute at @s[scores={KnockbackType=-2}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/freeze/chest
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/chest
execute at @s[scores={KnockbackType=1}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/small/chest
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/medium/chest
execute at @s[scores={KnockbackType=4}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/large/chest
execute at @s[scores={KnockbackType=5}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/burn/chest
execute at @s[scores={KnockbackType=6}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/soak/chest
execute at @s[scores={KnockbackType=7}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/freeze/chest
execute at @s[scores={KnockbackType=8..9}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/grab/chest
execute at @s[scores={KnockbackType=10}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/bite/chest
execute at @s[scores={KnockbackType=11}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/slip/chest
execute at @s[scores={KnockbackType=12..13}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/flee/chest

execute at @s[tag=cold_room_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/cold_room/chest
execute at @s[tag=high_health_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/high_health/chest
execute at @s[tag=low_health_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/low_health/chest

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/start/chest
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/chest