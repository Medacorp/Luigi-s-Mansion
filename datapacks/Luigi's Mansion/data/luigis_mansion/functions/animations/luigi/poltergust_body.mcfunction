tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-2.3 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-1.3 ^-0.075 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-1.3 ^-0.22 ~ ~
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^0.2 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^0.2 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.8 ^-0.075 ~ ~
teleport @s[tag=!riding_poltergust,tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.8 ^-0.22 ~ ~

teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!sneak_pos,nbt=!{Small:1b}] ^ ^-2.65 ^-0.2 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=sneak_pos,nbt=!{Small:1b}] ^ ^-2.4 ^-0.2 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!sneak_pos,nbt={Small:1b}] ^ ^-1.6 ^-0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=sneak_pos,nbt={Small:1b}] ^ ^-1.45 ^-0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!sneak_pos,nbt=!{Small:1b}] ^ ^0.6 ^-0.2 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=sneak_pos,nbt=!{Small:1b}] ^ ^0.35 ^-0.2 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!sneak_pos,nbt={Small:1b}] ^ ^1.08 ^-0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=sneak_pos,nbt={Small:1b}] ^ ^1.08 ^-0.1 ~ ~

data modify entity @s[tag=!riding_poltergust,tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!riding_poltergust,tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value 20.0f
data modify entity @s[tag=!riding_poltergust,tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!riding_poltergust,tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f
data modify entity @s[tag=riding_poltergust,tag=!flipped_gravity] Pose.Head set value [-90.0f,-180.0f,0.0f]
data modify entity @s[tag=riding_poltergust,tag=flipped_gravity] Pose.Head set value [-90.0f,-180.0f,-180.0f]

execute if entity @s[tag=riding_poltergust,tag=!was_riding_poltergust] run tag @a[tag=this_luigi,limit=1] add poltergust_floor_sound
execute unless data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data unless data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data run data remove entity @s[tag=!looking_at_map,tag=!riding_poltergust,scores={KnockbackType=0}] ArmorItems[3]
execute if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data run data modify entity @s[tag=!stop_model] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0}}
execute if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data store result score #temp Time run data get storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data
execute if data storage luigis_mansion:data luigi.mainhand.tag.luigis_mansion.poltergust_model_data if score #mirrored Selected matches 1 run scoreboard players add #temp Time 1
execute if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data run data modify entity @s[tag=!stop_model] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0}}
execute if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data store result score #temp Time run data get storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data
execute if data storage luigis_mansion:data luigi.offhand.tag.luigis_mansion.poltergust_model_data if score #mirrored Selected matches 0 run scoreboard players add #temp Time 1
execute if entity @s[tag=riding_poltergust,scores={KnockbackType=0}] run scoreboard players add #temp Time 2
execute store result entity @s[tag=!stop_model] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time

execute at @s[tag=exploding_poltergust] run particle minecraft:large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=exploding_poltergust] run particle minecraft:flame ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
tag @s remove exploding_poltergust

execute at @s[tag=yelling] run function luigis_mansion:animations/luigi/yelling/chest
execute at @s[tag=nod] run function luigis_mansion:animations/luigi/nod/chest
execute at @s[tag=thinking] run function luigis_mansion:animations/luigi/thinking/chest
execute at @s[tag=sigh] run function luigis_mansion:animations/luigi/sigh/chest
execute at @s[tag=enthusiastic] run function luigis_mansion:animations/luigi/enthusiastic/chest
execute at @s[tag=answer_phone] run function luigis_mansion:animations/luigi/answer_phone/chest
execute at @s[tag=gameboy_horror] run function luigis_mansion:animations/luigi/gameboy_horror/chest
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

execute at @s[tag=cold_room_idle] run function luigis_mansion:animations/luigi/idle/cold_room/chest
execute at @s[tag=high_health_idle] run function luigis_mansion:animations/luigi/idle/high_health/chest
execute at @s[tag=low_health_idle] run function luigis_mansion:animations/luigi/idle/low_health/chest

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/start/chest
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/chest