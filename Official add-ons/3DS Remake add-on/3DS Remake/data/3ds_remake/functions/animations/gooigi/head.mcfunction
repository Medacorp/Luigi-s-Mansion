tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-1.67 ^
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-1.73 ^
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-0.87 ^
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-0.93 ^
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^-0.42 ^
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^-0.36 ^
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.38 ^
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.44 ^

data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f


execute at @s if data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run function 3ds_remake:animations/gooigi/sync_head

$execute at @s run function $(namespace):animations/luigi/$(id)/head