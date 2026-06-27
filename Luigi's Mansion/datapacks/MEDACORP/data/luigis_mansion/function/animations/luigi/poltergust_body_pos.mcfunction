teleport @s[tag=!flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^-1.2 ^-0.125 ~ ~
teleport @s[tag=!flipped_gravity,tag=low_health,tag=!shrunk] ^ ^-1.2 ^-0.325 ~ ~
teleport @s[tag=!flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-0.59 ^-0.065 ~ ~
teleport @s[tag=!flipped_gravity,tag=low_health,tag=shrunk] ^ ^-0.59 ^-0.21 ~ ~
teleport @s[tag=flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^1.45 ^-0.125 ~ ~
teleport @s[tag=flipped_gravity,tag=low_health,tag=!shrunk] ^ ^1.45 ^-0.325 ~ ~
teleport @s[tag=flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-0.68 ^-0.065 ~ ~
teleport @s[tag=flipped_gravity,tag=low_health,tag=shrunk] ^ ^-0.68 ^-0.21 ~ ~
scoreboard players remove @s[tag=was_low_health,tag=!low_health] AnimationRotationX 200
scoreboard players add @s[tag=!was_low_health,tag=low_health] AnimationRotationX 200