# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-0.6 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-0.66 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.29 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.35 ^ ~ ~
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^0.85 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^0.91 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^-0.98 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^-0.92 ^ ~ ~

scoreboard players remove @s[tag=was_low_health,tag=!low_health] AnimationRotationX 200
scoreboard players add @s[tag=!was_low_health,tag=low_health] AnimationRotationX 200

$execute at @s run function $(namespace):animations/luigi/$(id)/chest