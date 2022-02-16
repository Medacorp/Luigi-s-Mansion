tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^0.35 ^-1.76 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^0.24 ^-0.9 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^0.24 ^-0.96 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^-0.35 ^-0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^-0.35 ^-0.34 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^-0.24 ^0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^-0.24 ^0.46 ^ ~ ~

execute if score #mirrored Selected matches 0 if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data if entity @s[tag=held_item,tag=!was_holding_poltergust] run function luigis_mansion:animations/luigi/reset_pose
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data if entity @s[tag=held_item,tag=!was_holding_poltergust] run function luigis_mansion:animations/luigi/reset_pose
execute if score #mirrored Selected matches 0 if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data run tag @s add holding_poltergust
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data run tag @s add holding_poltergust
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.offhand
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item,tag=!stop_model] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand
execute if score #mirrored Selected matches 1 if entity @s[tag=attacking,tag=!stop_model,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/attack/left_arm
execute if score #mirrored Selected matches 0 run tag @s remove attacking

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute if entity @s[tag=!stop_model,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle,scores={KnockbackType=0,Pull=0..9}] unless entity @s[tag=low_health,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/left_arm
execute if entity @s[tag=!stop_model,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle,scores={KnockbackType=0,Pull=0..9}] if entity @s[tag=low_health,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/hunched/left_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!low_health,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/sneaking/left_arm
execute if entity @s[tag=walking,tag=!stop_model,tag=!low_health,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/walking/left_arm
execute if entity @s[tag=running,tag=!stop_model,tag=!low_health,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/running/left_arm
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/swimming/left_arm

execute at @s[tag=yelling] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/yelling/left_arm
execute at @s[tag=nod] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/nod/left_arm
execute at @s[tag=thinking] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/thinking/left_arm
execute at @s[tag=sigh] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/sigh/left_arm
execute at @s[tag=enthusiastic] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/enthusiastic/left_arm
execute at @s[tag=answer_phone] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/answer_phone/left_arm
execute at @s[tag=gameboy_horror] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/gameboy_horror/left_arm
execute at @s[tag=inspect] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/inspect/left_arm
execute at @s[tag=look] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/look/left_arm
execute at @s[scores={KnockbackType=-8}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/bash/left_arm
execute at @s[scores={KnockbackType=-7}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/hump/left_arm
execute at @s[scores={KnockbackType=-6..-5}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/knock/left_arm
execute at @s[scores={KnockbackType=-4..-3}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/bashed/left_arm
execute at @s[scores={KnockbackType=-2}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/freeze/left_arm
execute at @s[scores={KnockbackType=-1}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/left_arm
execute at @s[scores={KnockbackType=1}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/small/left_arm
execute at @s[scores={KnockbackType=2..3}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/medium/left_arm
execute at @s[scores={KnockbackType=4}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/large/left_arm
execute at @s[scores={KnockbackType=5}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/burn/left_arm
execute at @s[scores={KnockbackType=6}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/soak/left_arm
execute at @s[scores={KnockbackType=7}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/freeze/left_arm
execute at @s[scores={KnockbackType=8..9}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/grab/left_arm
execute at @s[scores={KnockbackType=10}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/bite/left_arm
execute at @s[scores={KnockbackType=11}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/slip/left_arm
execute at @s[scores={KnockbackType=12..13}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/flee/left_arm

execute at @s[tag=cold_room_idle,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/cold_room/left_arm
execute at @s[tag=high_health_idle,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/high_health/left_arm
execute at @s[tag=low_health_idle,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/low_health/left_arm

execute at @s[scores={Pull=10..19,KnockbackType=0}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/pulled/start/left_arm
execute at @s[scores={Pull=20..,KnockbackType=0}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/pulled/left_arm