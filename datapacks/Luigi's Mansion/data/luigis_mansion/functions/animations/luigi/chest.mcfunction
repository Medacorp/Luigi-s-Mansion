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

execute at @s[scores={KnockbackType=1}] run function luigis_mansion:animations/luigi/knockback/small/chest
execute at @s[scores={KnockbackType=2}] run function luigis_mansion:animations/luigi/knockback/medium/chest
execute at @s[scores={KnockbackType=3}] run function luigis_mansion:animations/luigi/knockback/large/chest
execute at @s[scores={KnockbackType=4}] run function luigis_mansion:animations/luigi/knockback/burn/chest
execute at @s[scores={KnockbackType=5}] run function luigis_mansion:animations/luigi/knockback/soak/chest
execute at @s[scores={KnockbackType=6}] run function luigis_mansion:animations/luigi/knockback/freeze/chest