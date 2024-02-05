scoreboard players set @a[tag=try_opening_door,limit=1,sort=nearest] Invulnerable 0

tag @s add attack
execute positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[tag=left] run tag @a[tag=try_opening_door,limit=1,sort=nearest] add left_door
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fake_door"},durning_knockback_amount:0,animation:"knockback/fake_door"}
data modify storage luigis_mansion:data damage.durning_knockback_amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/damage
tag @a[tag=try_opening_door,limit=1,sort=nearest] remove left_door