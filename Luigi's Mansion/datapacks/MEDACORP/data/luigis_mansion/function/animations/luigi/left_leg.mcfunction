# Move with
teleport @s[tag=!shrunk,tag=!flipped_gravity] ^0.125 ^-1.24 ^ ~ ~
teleport @s[tag=shrunk,tag=!flipped_gravity] ^0.0625 ^-0.61 ^ ~ ~
teleport @s[tag=!shrunk,tag=flipped_gravity] ^-0.125 ^1.46 ^ ~ ~
teleport @s[tag=shrunk,tag=flipped_gravity] ^-0.0625 ^-0.65 ^ ~ ~

execute at @s run teleport @s[tag=low_health,tag=!shrunk] ^ ^ ^-0.2 ~ ~
execute at @s run teleport @s[tag=low_health,tag=shrunk] ^ ^ ^-0.15 ~ ~

# Move animations
scoreboard players set @s[tag=riding_poltergust] AnimationRotationX -300
scoreboard players set @s[tag=riding_poltergust] AnimationRotationY -300
execute if entity @s[tag=sneaking,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/sneak/left_leg
execute if entity @s[tag=walking,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/walk/left_leg
execute if entity @s[tag=running,tag=!riding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/run/left_leg

$execute at @s run function $(namespace):animations/luigi/$(id)/left_leg