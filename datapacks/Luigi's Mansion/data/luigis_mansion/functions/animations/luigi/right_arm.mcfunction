tag @s[tag=low_health,tag=!looking_at_map] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^-0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^-0.35 ^-1.76 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^-0.24 ^-0.9 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^-0.24 ^-0.96 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^0.35 ^-0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^0.35 ^-0.34 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^0.24 ^0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^0.24 ^0.46 ^ ~ ~

execute if score #mirrored Selected matches 0 if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data run tag @s add holding_poltergust
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data run tag @s add holding_poltergust
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=held_item,tag=!looking_at_map] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item,tag=!looking_at_map] ArmorItems[3] set from storage luigis_mansion:data luigi.offhand
execute if score #mirrored Selected matches 0 if entity @s[tag=attacking,tag=!looking_at_map,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/attack/right_arm
execute if score #mirrored Selected matches 1 run tag @s remove attacking

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute if entity @s[tag=!looking_at_map,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle,scores={KnockbackType=0,Pull=0..9}] unless entity @s[tag=low_health,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/right_arm
execute if entity @s[tag=!looking_at_map,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle,scores={KnockbackType=0,Pull=0..9}] if entity @s[tag=low_health,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/hunched/right_arm

# Move animations
execute if entity @s[tag=sneaking,tag=!looking_at_map,tag=!low_health,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/sneaking/right_arm
execute if entity @s[tag=walking,tag=!looking_at_map,tag=!low_health,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/walking/right_arm
execute if entity @s[tag=running,tag=!looking_at_map,tag=!low_health,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/running/right_arm
execute if entity @s[tag=swimming,tag=!looking_at_map,tag=!riding_poltergust,tag=!holding_poltergust,tag=!yelling] run function luigis_mansion:animations/luigi/swimming/right_arm
execute if entity @s[tag=looking_at_map] run function luigis_mansion:animations/luigi/looking_at_map/right_arm

execute at @s[tag=yelling] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/yelling/right_arm
execute at @s[tag=nod] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/nod/right_arm
execute at @s[tag=thinking] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/thinking/right_arm
execute at @s[tag=sigh] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/sigh/right_arm
execute at @s[tag=enthusiastic] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/enthusiastic/right_arm
execute at @s[tag=answer_phone] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/answer_phone/right_arm
execute at @s[tag=gameboy_horror] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/gameboy_horror/right_arm
execute at @s[tag=inspect] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/inspect/right_arm
execute at @s[scores={KnockbackType=-8}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/bash/right_arm
execute at @s[scores={KnockbackType=-7}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/hump/right_arm
execute at @s[scores={KnockbackType=-6..-5}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/search/knock/right_arm
execute at @s[scores={KnockbackType=-4..-3}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/bashed/right_arm
execute at @s[scores={KnockbackType=-2}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/freeze/right_arm
execute at @s[scores={KnockbackType=-1}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/scared/right_arm
execute at @s[scores={KnockbackType=1}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/small/right_arm
execute at @s[scores={KnockbackType=2..3}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/medium/right_arm
execute at @s[scores={KnockbackType=4}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/large/right_arm
execute at @s[scores={KnockbackType=5}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/burn/right_arm
execute at @s[scores={KnockbackType=6}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/soak/right_arm
execute at @s[scores={KnockbackType=7}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/freeze/right_arm
execute at @s[scores={KnockbackType=8..9}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/grab/right_arm
execute at @s[scores={KnockbackType=10}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/bite/right_arm
execute at @s[scores={KnockbackType=11}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/knockback/slip/right_arm

execute at @s[tag=cold_room_idle,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/cold_room/right_arm
execute at @s[tag=high_health_idle,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/high_health/right_arm
execute at @s[tag=low_health_idle,tag=!holding_poltergust] run function luigis_mansion:animations/luigi/idle/low_health/right_arm

execute at @s[scores={Pull=10..19,KnockbackType=0}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/pulled/start/right_arm
execute at @s[scores={Pull=20..,KnockbackType=0}] unless entity @s[tag=held_item,tag=holding_poltergust] run function luigis_mansion:animations/luigi/pulled/right_arm

tag @s remove holding_poltergust