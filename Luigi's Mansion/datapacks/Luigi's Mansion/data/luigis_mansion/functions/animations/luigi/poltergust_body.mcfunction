execute if entity @s[scores={KnockbackType=0,Pull=0..9}] unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming,tag=!low_health_idle] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-2.3 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-1.3 ^-0.075 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-1.3 ^-0.22 ~ ~
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^0.2 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^0.2 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.8 ^-0.075 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.8 ^-0.22 ~ ~

teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!sneak_pos,nbt=!{Small:1b}] ^ ^-2.65 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=sneak_pos,nbt=!{Small:1b}] ^ ^-2.4 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!sneak_pos,nbt={Small:1b}] ^ ^-1.6 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=sneak_pos,nbt={Small:1b}] ^ ^-1.45 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!sneak_pos,nbt=!{Small:1b}] ^ ^0.6 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=sneak_pos,nbt=!{Small:1b}] ^ ^0.35 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!sneak_pos,nbt={Small:1b}] ^ ^1.08 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=sneak_pos,nbt={Small:1b}] ^ ^1.08 ^0.05 ~ ~

data modify entity @s[tag=!riding_poltergust,tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!riding_poltergust,tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f
data modify entity @s[tag=!riding_poltergust,tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!riding_poltergust,tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f
data modify entity @s[tag=riding_poltergust,tag=!flipped_gravity] Pose.Head set value [-90.0f,0.0f,0.0f]
data modify entity @s[tag=riding_poltergust,tag=flipped_gravity] Pose.Head set value [-90.0f,0.0f,-180.0f]

execute if entity @s[tag=riding_poltergust,tag=!was_riding_poltergust] run tag @a[tag=this_luigi,limit=1] add poltergust_floor_sound

data modify entity @s ArmorItems[3] set from storage luigis_mansion:data luigi.poltergust
execute if score #mirrored Selected matches 0 if entity @s[scores={PoltergustTime=..5}] run data modify entity @s[tag=!riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.idle_right
execute if score #mirrored Selected matches 0 if entity @s[scores={PoltergustTime=6..}] run data modify entity @s[tag=!riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.body_right
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.sat_on_right
execute if score #mirrored Selected matches 1 if entity @s[scores={PoltergustTime=..5}] run data modify entity @s[tag=!riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.idle_left
execute if score #mirrored Selected matches 1 if entity @s[scores={PoltergustTime=6..}] run data modify entity @s[tag=!riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.body_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.sat_on_left
tag @s[scores={PoltergustTime=..5}] add idle_model
tag @s[scores={PoltergustTime=6..}] remove idle_model

execute at @s[tag=exploding_poltergust] run particle minecraft:large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=exploding_poltergust] run particle minecraft:flame ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
tag @s remove exploding_poltergust

execute at @s[tag=yelling] run function luigis_mansion:animations/luigi/yelling/chest
execute at @s[tag=talk_animation,tag=!low_health] run function luigis_mansion:animations/luigi/talk/high_health/chest
execute at @s[tag=talk_animation,tag=low_health] run function luigis_mansion:animations/luigi/talk/low_health/chest
execute at @s[tag=revive] run function luigis_mansion:animations/luigi/revive/chest
execute at @s[tag=nod] run function luigis_mansion:animations/luigi/nod/chest
execute at @s[tag=thinking] run function luigis_mansion:animations/luigi/thinking/chest
execute at @s[tag=sigh] run function luigis_mansion:animations/luigi/sigh/chest
execute at @s[tag=enthusiastic] run function luigis_mansion:animations/luigi/enthusiastic/chest
execute at @s[tag=answer_phone] run function luigis_mansion:animations/luigi/answer_phone/chest
execute at @s[tag=game_boy_horror] run function luigis_mansion:animations/luigi/game_boy_horror/chest
execute at @s[tag=inspect] run function luigis_mansion:animations/luigi/inspect/chest
execute at @s[tag=look] run function luigis_mansion:animations/luigi/look/chest
execute at @s[scores={KnockbackType=-8}] run function luigis_mansion:animations/luigi/search/bash/chest
execute at @s[scores={KnockbackType=-7}] run function luigis_mansion:animations/luigi/search/hump/chest
execute at @s[scores={KnockbackType=-6..-5}] run function luigis_mansion:animations/luigi/search/knock/chest
execute at @s[scores={KnockbackType=-4..-3}] run function luigis_mansion:animations/luigi/scared/bashed/chest
execute at @s[scores={KnockbackType=-2}] run function luigis_mansion:animations/luigi/scared/freeze/chest
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion:animations/luigi/scared/chest
execute at @s[scores={KnockbackType=1}] run function luigis_mansion:animations/luigi/knockback/small/chest
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion:animations/luigi/knockback/medium/chest
execute at @s[scores={KnockbackType=4}] run function luigis_mansion:animations/luigi/knockback/large/chest
execute at @s[scores={KnockbackType=5}] run function luigis_mansion:animations/luigi/knockback/burn/chest
execute at @s[scores={KnockbackType=6}] run function luigis_mansion:animations/luigi/knockback/soak/chest
execute at @s[scores={KnockbackType=7}] run function luigis_mansion:animations/luigi/knockback/freeze/chest
execute at @s[scores={KnockbackType=8..9}] run function luigis_mansion:animations/luigi/knockback/grab/chest
execute at @s[scores={KnockbackType=10}] run function luigis_mansion:animations/luigi/knockback/bite/chest
execute at @s[scores={KnockbackType=11}] run function luigis_mansion:animations/luigi/knockback/slip/chest
execute at @s[scores={KnockbackType=12..13}] run function luigis_mansion:animations/luigi/knockback/flee/chest
execute at @s[scores={KnockbackType=14}] run function luigis_mansion:animations/luigi/knockback/fake_door/chest

execute at @s[tag=cold_room_idle] run function luigis_mansion:animations/luigi/idle/cold_room/chest
execute at @s[tag=high_health_idle] run function luigis_mansion:animations/luigi/idle/high_health/chest
execute at @s[tag=low_health_idle] run function luigis_mansion:animations/luigi/idle/low_health/chest

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/start/chest
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/chest