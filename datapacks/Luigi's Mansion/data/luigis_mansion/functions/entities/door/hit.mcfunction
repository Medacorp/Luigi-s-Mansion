scoreboard players reset @a[tag=talked_to_villager,limit=1,sort=nearest] KnockbackTime
scoreboard players set @a[tag=talked_to_villager,limit=1,sort=nearest] KnockbackType 0
scoreboard players set @a[tag=talked_to_villager,limit=1,sort=nearest] Invulnerable 0

tag @s add attack
execute positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=talked_to_villager,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/knockback/fake_door
execute if entity @s[tag=left] run tag @a[tag=talked_to_villager,limit=1,sort=nearest] add left_door