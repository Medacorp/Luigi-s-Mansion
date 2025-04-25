# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.67 ^
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.73 ^
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.88 ^
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.94 ^
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.42 ^
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.36 ^
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.39 ^
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.45 ^

data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.001f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute at @s if data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run function luigis_mansion:animations/luigi/sync_head
execute positioned as @s unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run teleport @s ~ ~ ~ ~ ~

$execute at @s run function $(namespace):animations/luigi/$(id)/head

execute store result score #temp Time run data get entity @s Rotation[0]
execute store result score #temp2 Time run data get entity @s Pose.Head[1]
execute store result storage luigis_mansion:data luigi.head_rotation float 1 run scoreboard players operation #temp Time += #temp2 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time