tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.67 ^
teleport @s[tag=sneak_pos,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.73 ^
teleport @s[tag=!sneak_pos,tag=shrunk,tag=!flipped_gravity] ^ ^-0.88 ^
teleport @s[tag=sneak_pos,tag=shrunk,tag=!flipped_gravity] ^ ^-0.94 ^
teleport @s[tag=!sneak_pos,tag=!shrunk,tag=flipped_gravity] ^ ^-0.42 ^
teleport @s[tag=sneak_pos,tag=!shrunk,tag=flipped_gravity] ^ ^-0.36 ^
teleport @s[tag=!sneak_pos,tag=shrunk,tag=flipped_gravity] ^ ^0.39 ^
teleport @s[tag=sneak_pos,tag=shrunk,tag=flipped_gravity] ^ ^0.45 ^

data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute at @s if data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run function luigis_mansion:animations/luigi/sync_head
execute positioned as @s unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run teleport @s ~ ~ ~ ~ ~

$execute at @s run function $(namespace):animations/luigi/$(id)/head

tag @s[tag=low_health] add scared_head
tag @s[tag=poltergust_grabbed] add scared_head
function luigis_mansion:animations/luigi/transform_head