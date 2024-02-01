tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[nbt=!{Small:1b},tag=!flipped_gravity] ^0.11 ^-2.34 ^ ~ ~
teleport @s[nbt={Small:1b},tag=!flipped_gravity] ^0.08 ^-1.34 ^ ~ ~
teleport @s[nbt=!{Small:1b},tag=flipped_gravity] ^-0.11 ^0.21 ^ ~ ~
teleport @s[nbt={Small:1b},tag=flipped_gravity] ^-0.08 ^0.85 ^ ~ ~

execute at @s run teleport @s[tag=sneak_pos,nbt=!{Small:1b}] ^ ^ ^-0.2 ~ ~
execute at @s run teleport @s[tag=sneak_pos,nbt={Small:1b}] ^ ^ ^-0.15 ~ ~
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

# Move animations
data modify entity @s[tag=riding_poltergust] Pose.Head[0] set value -30.0f
data modify entity @s[tag=riding_poltergust] Pose.Head[1] set value -30.0f
execute if entity @s[tag=sneaking,tag=!stop_model,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/sneak/left_leg
execute if entity @s[tag=walking,tag=!stop_model,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/walk/left_leg
execute if entity @s[tag=running,tag=!stop_model,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/run/left_leg
execute if entity @s[tag=swimming,tag=!stop_model,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/swim/left_leg

$execute at @s run function $(namespace):animations/luigi/$(id)/left_leg