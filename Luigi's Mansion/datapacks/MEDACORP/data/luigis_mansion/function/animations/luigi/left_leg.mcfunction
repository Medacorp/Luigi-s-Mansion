# Move with
teleport @s[tag=!shrunk,tag=!flipped_gravity] ^0.11 ^-2.34 ^ ~ ~
teleport @s[tag=shrunk,tag=!flipped_gravity] ^0.06 ^-1.22 ^ ~ ~
teleport @s[tag=!shrunk,tag=flipped_gravity] ^-0.11 ^0.21 ^ ~ ~
teleport @s[tag=shrunk,tag=flipped_gravity] ^-0.06 ^0.73 ^ ~ ~

execute at @s run teleport @s[tag=low_health,tag=!shrunk] ^ ^ ^-0.2 ~ ~
execute at @s run teleport @s[tag=low_health,tag=shrunk] ^ ^ ^-0.15 ~ ~
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.001f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

# Move animations
data modify entity @s[tag=riding_poltergust] Pose.Head[0] set value -30.0f
data modify entity @s[tag=riding_poltergust] Pose.Head[1] set value -30.0f
execute if entity @s[tag=sneaking,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/sneak/left_leg
execute if entity @s[tag=walking,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/walk/left_leg
execute if entity @s[tag=running,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/run/left_leg

$execute at @s run function $(namespace):animations/luigi/$(id)/left_leg