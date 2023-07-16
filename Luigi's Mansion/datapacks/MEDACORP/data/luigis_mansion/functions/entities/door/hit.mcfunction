scoreboard players reset @a[tag=try_opening_door,limit=1,sort=nearest] KnockbackTime
scoreboard players set @a[tag=try_opening_door,limit=1,sort=nearest] KnockbackType 0
scoreboard players set @a[tag=try_opening_door,limit=1,sort=nearest] Invulnerable 0

tag @s add attack
execute positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[tag=!left] run scoreboard players set @a[tag=try_opening_door,limit=1,sort=nearest] Animation 37
execute if entity @s[tag=left] run scoreboard players set @a[tag=try_opening_door,limit=1,sort=nearest] Animation 38
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:punch",durning_knockback_amount:0,knockback:"fake_door"}
data modify storage luigis_mansion:data damage.durning_knockback_amount set from entity @s ArmorItems[3].tag.damage.attack
execute as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/take_damage