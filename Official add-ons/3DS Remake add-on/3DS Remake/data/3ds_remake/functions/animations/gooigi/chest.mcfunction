execute if entity @s[scores={Animation=-3..3}] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
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

execute at @s[scores={Animation=-4}] run function 3ds_remake:animations/gooigi/pulled/chest
execute at @s[scores={Animation=-1}] run function 3ds_remake:animations/gooigi/wave/chest
execute at @s[scores={Animation=2}] run function 3ds_remake:animations/gooigi/idle/low_health/chest
execute at @s[scores={Animation=3}] run function 3ds_remake:animations/gooigi/idle/cold_room/chest
execute at @s[scores={Animation=4}] run function 3ds_remake:animations/gooigi/idle/high_health/chest
execute at @s[scores={Animation=5}] run function 3ds_remake:animations/gooigi/nod/chest
execute at @s[scores={Animation=6}] run function 3ds_remake:animations/gooigi/thinking/chest
execute at @s[scores={Animation=7}] run function 3ds_remake:animations/gooigi/enthusiastic/chest
execute at @s[scores={Animation=8}] run function 3ds_remake:animations/gooigi/sigh/chest
execute at @s[scores={Animation=9}] run function 3ds_remake:animations/gooigi/game_boy_horror/chest
execute at @s[scores={Animation=10}] run function 3ds_remake:animations/gooigi/inspect/chest
execute at @s[scores={Animation=11}] run function 3ds_remake:animations/gooigi/look/chest
execute at @s[scores={Animation=12}] run function 3ds_remake:animations/gooigi/answer_phone/chest
execute at @s[scores={Animation=26}] run function 3ds_remake:animations/gooigi/revive/chest
execute at @s[scores={Animation=27}] run function 3ds_remake:animations/gooigi/knockback/small/chest
execute at @s[scores={Animation=28}] run function 3ds_remake:animations/gooigi/knockback/medium/chest
execute at @s[scores={Animation=29}] run function 3ds_remake:animations/gooigi/knockback/large/chest
execute at @s[scores={Animation=30}] run function 3ds_remake:animations/gooigi/knockback/burn/chest
execute at @s[scores={Animation=31}] run function 3ds_remake:animations/gooigi/knockback/soak/chest
execute at @s[scores={Animation=32}] run function 3ds_remake:animations/gooigi/knockback/freeze/chest
execute at @s[scores={Animation=33}] run function 3ds_remake:animations/gooigi/knockback/grab/chest
execute at @s[scores={Animation=34}] run function 3ds_remake:animations/gooigi/knockback/bite/chest
execute at @s[scores={Animation=35}] run function 3ds_remake:animations/gooigi/knockback/slip/chest
execute at @s[scores={Animation=36}] run function 3ds_remake:animations/gooigi/knockback/flee/chest
execute at @s[scores={Animation=37..38}] run function 3ds_remake:animations/gooigi/knockback/fake_door/chest
execute at @s[scores={Animation=39}] run function 3ds_remake:animations/gooigi/scared/chest
execute at @s[scores={Animation=40}] run function 3ds_remake:animations/gooigi/scared/freeze/chest
execute at @s[scores={Animation=41}] run function 3ds_remake:animations/gooigi/scared/bashed/chest
execute at @s[scores={Animation=42}] run function 3ds_remake:animations/gooigi/search/knock/chest
execute at @s[scores={Animation=43}] run function 3ds_remake:animations/gooigi/search/hump/chest
execute at @s[scores={Animation=44}] run function 3ds_remake:animations/gooigi/search/bash/chest
execute at @s[scores={Animation=45}] run function 3ds_remake_3ds_remake:animations/gooigi/search/chest/chest