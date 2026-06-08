# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.7 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.76 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.9 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.96 ^ ~ ~
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.4 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.34 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.4 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.46 ^ ~ ~

scoreboard players remove @s[tag=was_low_health,tag=!low_health] AnimationRotationX 200
scoreboard players add @s[tag=!was_low_health,tag=low_health] AnimationRotationX 200
scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

$execute at @s run function $(namespace):animations/luigi/$(id)/chest