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

data modify entity @s ArmorItems[3] set from storage luigis_mansion:data luigi.poltergust
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=!riding_poltergust,tag=!poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.idle_right
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=!riding_poltergust,tag=poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.body_right
execute if score #mirrored Selected matches 0 run data modify entity @s[tag=riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.sat_on_right
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=!poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.idle_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=poltergust_grabbed] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.body_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=riding_poltergust] ArmorItems[3] merge from storage luigis_mansion:data luigi.poltergust.tag.luigis_mansion.model.sat_on_left

$execute at @s run function $(namespace):animations/luigi/$(id)/poltergust_body

execute unless data entity @s ArmorItems[3].tag run data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",Count:1b}
data modify entity @s ArmorItems[3].tag.luigis_mansion.animation set from storage luigis_mansion:data luigi.animation