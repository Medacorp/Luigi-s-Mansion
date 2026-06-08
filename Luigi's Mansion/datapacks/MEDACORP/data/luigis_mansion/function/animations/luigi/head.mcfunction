# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.67 ^
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.73 ^
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.88 ^
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.94 ^
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.42 ^
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.36 ^
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.39 ^
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.45 ^

scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

execute at @s if data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run function luigis_mansion:animations/luigi/sync_head
execute positioned as @s unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run teleport @s ~ ~ ~ ~ ~

$execute at @s run function $(namespace):animations/luigi/$(id)/head

execute store result score #head Time run data get entity @s Rotation[0] 10
execute store result storage luigis_mansion:data luigi.head_rotation float 1 run scoreboard players operation #head Time += @s AnimationRotationY
scoreboard players reset #head Time