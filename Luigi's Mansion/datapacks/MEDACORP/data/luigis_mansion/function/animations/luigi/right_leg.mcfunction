# Move with
teleport @s[tag=!shrunk,tag=!flipped_gravity] ^-0.125 ^-2.34 ^ ~ ~
teleport @s[tag=shrunk,tag=!flipped_gravity] ^-0.0625 ^-1.22 ^ ~ ~
teleport @s[tag=!shrunk,tag=flipped_gravity] ^0.125 ^0.21 ^ ~ ~
teleport @s[tag=shrunk,tag=flipped_gravity] ^0.0625 ^0.73 ^ ~ ~

execute at @s run teleport @s[tag=low_health,tag=!shrunk] ^ ^ ^-0.2 ~ ~
execute at @s run teleport @s[tag=low_health,tag=shrunk] ^ ^ ^-0.15 ~ ~
scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800

# Move animations
scoreboard players set @s[tag=riding_poltergust] AnimationRotationX -300
scoreboard players set @s[tag=riding_poltergust] AnimationRotationY 300
execute if entity @s[tag=sneaking,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/sneak/right_leg
execute if entity @s[tag=walking,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/walk/right_leg
execute if entity @s[tag=running,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/run/right_leg

$execute at @s run function $(namespace):animations/luigi/$(id)/right_leg