effect give @s minecraft:instant_damage 1 0 true
scoreboard players set @s ForcedDamage 4

tag @s add attack
execute positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=talked_to_villager,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/knockback/fake_door
execute if entity @s[tag=left] run tag @a[tag=talked_to_villager,limit=1,sort=nearest] add left_door