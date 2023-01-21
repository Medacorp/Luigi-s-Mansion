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

execute if entity @s[scores={Animation=13..24}] run data modify entity @s[tag=held_item] ArmorItems[3] set value {}
execute if entity @s[scores={Animation=13..24}] if score #mirrored Selected matches 0 if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.is_nozzle run tag @s add holding_poltergust
execute if entity @s[scores={Animation=13..24}] if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.is_nozzle run tag @s add holding_poltergust

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute unless entity @s[tag=low_health,tag=!holding_poltergust] if entity @s[scores={Animation=0..1}] run function luigis_mansion:animations/luigi/idle/left_arm
execute if entity @s[tag=low_health,tag=!holding_poltergust] if entity @s[scores={Animation=0..1}] run function luigis_mansion:animations/luigi/idle/hunched/left_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={Animation=..0}] run function luigis_mansion:animations/luigi/sneaking/left_arm
execute if entity @s[tag=walking,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={Animation=..0}] run function luigis_mansion:animations/luigi/walking/left_arm
execute if entity @s[tag=running,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={Animation=..0}] run function luigis_mansion:animations/luigi/running/left_arm
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,scores={Animation=..0}] run function luigis_mansion:animations/luigi/swimming/left_arm

execute at @s[scores={Animation=-4}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/pulled/left_arm
execute at @s[scores={Animation=-3..-2}] if score #mirrored Selected matches 1 run function luigis_mansion:animations/luigi/move_nozzle/left_arm
execute at @s[scores={Animation=-1}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/yelling/left_arm
execute at @s[scores={Animation=2},tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/low_health/left_arm
execute at @s[scores={Animation=3},tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/cold_room/left_arm
execute at @s[scores={Animation=4},tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/high_health/left_arm
execute at @s[scores={Animation=5}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/nod/left_arm
execute at @s[scores={Animation=6}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/thinking/left_arm
execute at @s[scores={Animation=7}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/enthusiastic/left_arm
execute at @s[scores={Animation=8}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/sigh/left_arm
execute at @s[scores={Animation=9}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/game_boy_horror/left_arm
execute at @s[scores={Animation=10}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/inspect/left_arm
execute at @s[scores={Animation=11}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/look/left_arm
execute at @s[scores={Animation=12}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/answer_phone/left_arm
execute at @s[scores={Animation=14}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/door/push/open/left_arm
execute at @s[scores={Animation=16}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/door/pull/open/left_arm
execute at @s[scores={Animation=18}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/door/push/locked/left_arm
execute at @s[scores={Animation=20}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/door/pull/locked/left_arm
execute at @s[scores={Animation=22}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/door/push/unlock/left_arm
execute at @s[scores={Animation=24}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/door/pull/unlock/left_arm
execute at @s[scores={Animation=25},tag=!low_health] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/talk/high_health/left_arm
execute at @s[scores={Animation=25},tag=low_health] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/talk/low_health/left_arm
execute at @s[scores={Animation=26}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/revive/left_arm
execute at @s[scores={Animation=27}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/small/left_arm
execute at @s[scores={Animation=28}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/medium/left_arm
execute at @s[scores={Animation=29}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/large/left_arm
execute at @s[scores={Animation=30}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/burn/left_arm
execute at @s[scores={Animation=31}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/soak/left_arm
execute at @s[scores={Animation=32}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/freeze/left_arm
execute at @s[scores={Animation=33}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/grab/left_arm
execute at @s[scores={Animation=34}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/bite/left_arm
execute at @s[scores={Animation=35}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/slip/left_arm
execute at @s[scores={Animation=36}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/flee/left_arm
execute at @s[scores={Animation=37..38}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/fake_door/left_arm
execute at @s[scores={Animation=39}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/left_arm
execute at @s[scores={Animation=40}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/freeze/left_arm
execute at @s[scores={Animation=41}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/bashed/left_arm
execute at @s[scores={Animation=42}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/knock/left_arm
execute at @s[scores={Animation=43}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/hump/left_arm
execute at @s[scores={Animation=44}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/bash/left_arm
execute at @s[scores={Animation=45}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion_3ds_remake:animations/luigi/search/chest/left_arm

execute if score #mirrored Selected matches 0 run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.offhand
execute if entity @s[scores={Animation=-3,AnimationProg=6..}] if score #mirrored Selected matches 1 unless data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.is_nozzle run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand
execute if entity @s[scores={Animation=-2,AnimationProg=6..}] if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.is_nozzle run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand