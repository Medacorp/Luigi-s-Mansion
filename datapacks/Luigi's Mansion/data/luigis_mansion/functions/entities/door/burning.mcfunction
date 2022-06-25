effect give @s minecraft:instant_damage 1 0 true
scoreboard players set @s ForcedDamage 4
execute positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute positioned ^ ^ ^-0.5 align xz positioned ~0.5 ~ ~0.5 run function luigis_mansion:entities/player/knockback/burn