execute positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @s ~0.5 ~ ~0.5 ~ ~
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:blockade",amount:5,knockback:"medium"}
execute positioned ^ ^ ^-0.5 align xz positioned ~0.5 ~ ~0.5 run function luigis_mansion:entities/player/damage