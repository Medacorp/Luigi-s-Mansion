# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.7 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.76 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.9 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.96 ^ ~ ~
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.4 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^-0.34 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.4 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.46 ^ ~ ~

data modify entity @s[tag=was_low_health,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_low_health,tag=low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.001f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

$execute at @s run function $(namespace):animations/luigi/$(id)/chest