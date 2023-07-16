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
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/sneaking/right_leg
execute if entity @s[tag=walking,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/walking/right_leg
execute if entity @s[tag=running,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/running/right_leg
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/swimming/right_leg

execute at @s[scores={Animation=-4}] run function 3ds_remake:animations/gooigi/pulled/right_leg
execute at @s[scores={Animation=2}] run function 3ds_remake:animations/gooigi/idle/low_health/right_leg
execute at @s[scores={Animation=3}] run function 3ds_remake:animations/gooigi/idle/cold_room/right_leg
execute at @s[scores={Animation=4}] run function 3ds_remake:animations/gooigi/idle/high_health/right_leg
execute at @s[scores={Animation=5}] run function 3ds_remake:animations/gooigi/nod/right_leg
execute at @s[scores={Animation=6}] run function 3ds_remake:animations/gooigi/thinking/right_leg
execute at @s[scores={Animation=7}] run function 3ds_remake:animations/gooigi/enthusiastic/right_leg
execute at @s[scores={Animation=8}] run function 3ds_remake:animations/gooigi/sigh/right_leg
execute at @s[scores={Animation=9}] run function 3ds_remake:animations/gooigi/game_boy_horror/right_leg
execute at @s[scores={Animation=10}] run function 3ds_remake:animations/gooigi/inspect/right_leg
execute at @s[scores={Animation=11}] run function 3ds_remake:animations/gooigi/look/right_leg
execute at @s[scores={Animation=12}] run function 3ds_remake:animations/gooigi/answer_phone/right_leg
execute at @s[scores={Animation=26}] run function 3ds_remake:animations/gooigi/revive/right_leg
execute at @s[scores={Animation=27}] run function 3ds_remake:animations/gooigi/knockback/small/right_leg
execute at @s[scores={Animation=28}] run function 3ds_remake:animations/gooigi/knockback/medium/right_leg
execute at @s[scores={Animation=29}] run function 3ds_remake:animations/gooigi/knockback/large/right_leg
execute at @s[scores={Animation=30}] run function 3ds_remake:animations/gooigi/knockback/burn/right_leg
execute at @s[scores={Animation=31}] run function 3ds_remake:animations/gooigi/knockback/soak/right_leg
execute at @s[scores={Animation=32}] run function 3ds_remake:animations/gooigi/knockback/freeze/right_leg
execute at @s[scores={Animation=33}] run function 3ds_remake:animations/gooigi/knockback/grab/right_leg
execute at @s[scores={Animation=34}] run function 3ds_remake:animations/gooigi/knockback/bite/right_leg
execute at @s[scores={Animation=35}] run function 3ds_remake:animations/gooigi/knockback/slip/right_leg
execute at @s[scores={Animation=36}] run function 3ds_remake:animations/gooigi/knockback/flee/right_leg
execute at @s[scores={Animation=37..38}] run function 3ds_remake:animations/gooigi/knockback/fake_door/right_leg
execute at @s[scores={Animation=39}] run function 3ds_remake:animations/gooigi/scared/right_leg
execute at @s[scores={Animation=40}] run function 3ds_remake:animations/gooigi/scared/freeze/right_leg
execute at @s[scores={Animation=41}] run function 3ds_remake:animations/gooigi/scared/bashed/right_leg
execute at @s[scores={Animation=42}] run function 3ds_remake:animations/gooigi/search/knock/right_leg
execute at @s[scores={Animation=43}] run function 3ds_remake:animations/gooigi/search/hump/right_leg
execute at @s[scores={Animation=44}] run function 3ds_remake:animations/gooigi/search/bash/right_leg
execute at @s[scores={Animation=45}] run function 3ds_remake_3ds_remake:animations/gooigi/search/chest/right_leg