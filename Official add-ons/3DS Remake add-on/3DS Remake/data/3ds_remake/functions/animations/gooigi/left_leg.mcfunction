execute if entity @s[scores={Animation=-3..3}] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
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
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/sneaking/left_leg
execute if entity @s[tag=walking,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/walking/left_leg
execute if entity @s[tag=running,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/running/left_leg
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/swimming/left_leg

execute at @s[scores={Animation=-4}] run function 3ds_remake:animations/gooigi/pulled/left_leg
execute at @s[scores={Animation=2}] run function 3ds_remake:animations/gooigi/idle/low_health/left_leg
execute at @s[scores={Animation=3}] run function 3ds_remake:animations/gooigi/idle/cold_room/left_leg
execute at @s[scores={Animation=4}] run function 3ds_remake:animations/gooigi/idle/high_health/left_leg
execute at @s[scores={Animation=5}] run function 3ds_remake:animations/gooigi/nod/left_leg
execute at @s[scores={Animation=6}] run function 3ds_remake:animations/gooigi/thinking/left_leg
execute at @s[scores={Animation=7}] run function 3ds_remake:animations/gooigi/enthusiastic/left_leg
execute at @s[scores={Animation=8}] run function 3ds_remake:animations/gooigi/sigh/left_leg
execute at @s[scores={Animation=9}] run function 3ds_remake:animations/gooigi/game_boy_horror/left_leg
execute at @s[scores={Animation=10}] run function 3ds_remake:animations/gooigi/inspect/left_leg
execute at @s[scores={Animation=11}] run function 3ds_remake:animations/gooigi/look/left_leg
execute at @s[scores={Animation=12}] run function 3ds_remake:animations/gooigi/answer_phone/left_leg
execute at @s[scores={Animation=26}] run function 3ds_remake:animations/gooigi/revive/left_leg
execute at @s[scores={Animation=27}] run function 3ds_remake:animations/gooigi/knockback/small/left_leg
execute at @s[scores={Animation=28}] run function 3ds_remake:animations/gooigi/knockback/medium/left_leg
execute at @s[scores={Animation=29}] run function 3ds_remake:animations/gooigi/knockback/large/left_leg
execute at @s[scores={Animation=30}] run function 3ds_remake:animations/gooigi/knockback/burn/left_leg
execute at @s[scores={Animation=31}] run function 3ds_remake:animations/gooigi/knockback/soak/left_leg
execute at @s[scores={Animation=32}] run function 3ds_remake:animations/gooigi/knockback/freeze/left_leg
execute at @s[scores={Animation=33}] run function 3ds_remake:animations/gooigi/knockback/grab/left_leg
execute at @s[scores={Animation=34}] run function 3ds_remake:animations/gooigi/knockback/bite/left_leg
execute at @s[scores={Animation=35}] run function 3ds_remake:animations/gooigi/knockback/slip/left_leg
execute at @s[scores={Animation=36}] run function 3ds_remake:animations/gooigi/knockback/flee/left_leg
execute at @s[scores={Animation=37..38}] run function 3ds_remake:animations/gooigi/knockback/fake_door/left_leg
execute at @s[scores={Animation=39}] run function 3ds_remake:animations/gooigi/scared/left_leg
execute at @s[scores={Animation=40}] run function 3ds_remake:animations/gooigi/scared/freeze/left_leg
execute at @s[scores={Animation=41}] run function 3ds_remake:animations/gooigi/scared/bashed/left_leg
execute at @s[scores={Animation=42}] run function 3ds_remake:animations/gooigi/search/knock/left_leg
execute at @s[scores={Animation=43}] run function 3ds_remake:animations/gooigi/search/hump/left_leg
execute at @s[scores={Animation=44}] run function 3ds_remake:animations/gooigi/search/bash/left_leg
execute at @s[scores={Animation=45}] run function 3ds_remake_3ds_remake:animations/gooigi/search/chest/left_leg