execute if entity @s[scores={Animation=-3..3}] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
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

execute if entity @s[tag=riding_poltergust,tag=!was_riding_poltergust] run tag @a[tag=gooigi,limit=1] add poltergust_floor_sound

execute at @s[tag=exploding_poltergust] run particle minecraft:large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=exploding_poltergust] run particle minecraft:flame ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
tag @s remove exploding_poltergust

execute at @s[scores={Animation=-4}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/chest
execute at @s[scores={Animation=-3..-2}] run function luigis_mansion_3ds_remake:animations/gooigi/move_nozzle/poltergust_body
execute at @s[scores={Animation=-1}] run function luigis_mansion_3ds_remake:animations/gooigi/wave/chest
execute at @s[scores={Animation=2}] run function luigis_mansion_3ds_remake:animations/gooigi/idle/low_health/chest
execute at @s[scores={Animation=3}] run function luigis_mansion_3ds_remake:animations/gooigi/idle/cold_room/chest
execute at @s[scores={Animation=4}] run function luigis_mansion_3ds_remake:animations/gooigi/idle/high_health/chest
execute at @s[scores={Animation=5}] run function luigis_mansion_3ds_remake:animations/gooigi/nod/chest
execute at @s[scores={Animation=6}] run function luigis_mansion_3ds_remake:animations/gooigi/thinking/chest
execute at @s[scores={Animation=7}] run function luigis_mansion_3ds_remake:animations/gooigi/enthusiastic/chest
execute at @s[scores={Animation=8}] run function luigis_mansion_3ds_remake:animations/gooigi/sigh/chest
execute at @s[scores={Animation=9}] run function luigis_mansion_3ds_remake:animations/gooigi/game_boy_horror/chest
execute at @s[scores={Animation=10}] run function luigis_mansion_3ds_remake:animations/gooigi/inspect/chest
execute at @s[scores={Animation=11}] run function luigis_mansion_3ds_remake:animations/gooigi/look/chest
execute at @s[scores={Animation=12}] run function luigis_mansion_3ds_remake:animations/gooigi/answer_phone/chest
execute at @s[scores={Animation=26}] run function luigis_mansion_3ds_remake:animations/gooigi/revive/chest
execute at @s[scores={Animation=27}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/small/chest
execute at @s[scores={Animation=28}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/medium/chest
execute at @s[scores={Animation=29}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/large/chest
execute at @s[scores={Animation=30}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/burn/chest
execute at @s[scores={Animation=31}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/soak/chest
execute at @s[scores={Animation=32}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/freeze/chest
execute at @s[scores={Animation=33}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/grab/chest
execute at @s[scores={Animation=34}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/bite/chest
execute at @s[scores={Animation=35}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/slip/chest
execute at @s[scores={Animation=36}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/flee/chest
execute at @s[scores={Animation=37..38}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/fake_door/chest
execute at @s[scores={Animation=39}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/chest
execute at @s[scores={Animation=40}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/freeze/chest
execute at @s[scores={Animation=41}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/bashed/chest
execute at @s[scores={Animation=42}] run function luigis_mansion_3ds_remake:animations/gooigi/search/knock/chest
execute at @s[scores={Animation=43}] run function luigis_mansion_3ds_remake:animations/gooigi/search/hump/chest
execute at @s[scores={Animation=44}] run function luigis_mansion_3ds_remake:animations/gooigi/search/bash/chest
execute at @s[scores={Animation=45}] run function luigis_mansion_3ds_remake_3ds_remake:animations/gooigi/search/chest/chest

data modify entity @s ArmorItems[3] set from storage luigis_mansion:data luigi.poltergust
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=!riding_poltergust,tag=!poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.idle_right
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=!riding_poltergust,tag=poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.body_right
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.sat_on_right
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=!poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.idle_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.body_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.sat_on_left