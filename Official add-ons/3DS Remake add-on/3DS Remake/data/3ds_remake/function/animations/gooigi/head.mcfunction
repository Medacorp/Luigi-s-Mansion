# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-0.57 ^
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-0.63 ^
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.27 ^
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.33 ^
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^0.83 ^
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^0.89 ^
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^-0.99 ^
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^-0.93 ^

execute at @s if data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run function 3ds_remake:animations/gooigi/sync_head
execute positioned as @s unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run teleport @s ~ ~ ~ ~ ~

$execute at @s run function $(namespace):animations/luigi/$(id)/head

execute store result score #head Time run data get entity @s Rotation[0] 10
execute store result storage luigis_mansion:data luigi.head_rotation float 1 run scoreboard players operation #head Time += @s AnimationRotationY
scoreboard players reset #head Time