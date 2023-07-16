execute if entity @s[scores={Animation=-3..3}] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^0.35 ^-1.76 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^0.24 ^-0.9 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^0.24 ^-0.96 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^-0.35 ^-0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^-0.35 ^-0.34 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^-0.24 ^0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^-0.24 ^0.46 ^ ~ ~

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute unless entity @s[tag=low_health,tag=!holding_poltergust] if entity @s[scores={Animation=0..1}] run function 3ds_remake:animations/gooigi/idle/left_arm
execute if entity @s[tag=low_health,tag=!holding_poltergust] if entity @s[scores={Animation=0..1}] run function 3ds_remake:animations/gooigi/idle/hunched/left_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/sneaking/left_arm
execute if entity @s[tag=walking,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/walking/left_arm
execute if entity @s[tag=running,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/running/left_arm
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,scores={Animation=..0}] run function 3ds_remake:animations/gooigi/swimming/left_arm

execute at @s[scores={Animation=-4}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/pulled/left_arm
execute at @s[scores={Animation=-3..-2}] if score #mirrored Selected matches 1 run function 3ds_remake:animations/gooigi/move_nozzle/left_arm
execute at @s[scores={Animation=-1}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/wave/left_arm
execute at @s[scores={Animation=2},tag=!holding_poltergust] run function 3ds_remake:animations/gooigi/idle/low_health/left_arm
execute at @s[scores={Animation=3},tag=!holding_poltergust] run function 3ds_remake:animations/gooigi/idle/cold_room/left_arm
execute at @s[scores={Animation=4},tag=!holding_poltergust] run function 3ds_remake:animations/gooigi/idle/high_health/left_arm
execute at @s[scores={Animation=5}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/nod/left_arm
execute at @s[scores={Animation=6}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/thinking/left_arm
execute at @s[scores={Animation=7}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/enthusiastic/left_arm
execute at @s[scores={Animation=8}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/sigh/left_arm
execute at @s[scores={Animation=9}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/game_boy_horror/left_arm
execute at @s[scores={Animation=10}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/inspect/left_arm
execute at @s[scores={Animation=11}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/look/left_arm
execute at @s[scores={Animation=12}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/answer_phone/left_arm
execute at @s[scores={Animation=26}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/revive/left_arm
execute at @s[scores={Animation=27}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/small/left_arm
execute at @s[scores={Animation=28}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/medium/left_arm
execute at @s[scores={Animation=29}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/large/left_arm
execute at @s[scores={Animation=30}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/burn/left_arm
execute at @s[scores={Animation=31}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/soak/left_arm
execute at @s[scores={Animation=32}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/freeze/left_arm
execute at @s[scores={Animation=33}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/grab/left_arm
execute at @s[scores={Animation=34}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/bite/left_arm
execute at @s[scores={Animation=35}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/slip/left_arm
execute at @s[scores={Animation=36}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/flee/left_arm
execute at @s[scores={Animation=37..38}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/knockback/fake_door/left_arm
execute at @s[scores={Animation=39}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/scared/left_arm
execute at @s[scores={Animation=40}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/scared/freeze/left_arm
execute at @s[scores={Animation=41}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/scared/bashed/left_arm
execute at @s[scores={Animation=42}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/search/knock/left_arm
execute at @s[scores={Animation=43}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/search/hump/left_arm
execute at @s[scores={Animation=44}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake:animations/gooigi/search/bash/left_arm
execute at @s[scores={Animation=45}] unless entity @s[tag=held_item,tag=holding_poltergust] run function 3ds_remake_3ds_remake:animations/gooigi/search/chest/left_arm

execute if score #mirrored Selected matches 0 if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.is_nozzle run tag @s add holding_poltergust
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.is_nozzle run tag @s add holding_poltergust
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.offhand
execute if entity @s[tag=!poltergust_grabbed] if score #mirrored Selected matches 1 unless data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.is_nozzle run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand
execute if entity @s[tag=poltergust_grabbed] if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.is_nozzle run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand