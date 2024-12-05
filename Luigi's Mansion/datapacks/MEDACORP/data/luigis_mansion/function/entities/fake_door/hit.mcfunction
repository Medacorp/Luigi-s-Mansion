scoreboard players set @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] Invulnerable 0

tag @s add attack
execute as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"^ ^ ^0.5 ~-180 ~"}
execute if entity @s[tag=left] run tag @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] add left_door
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fake_door"},durning_knockback_amount:0,animation:{namespace:"luigis_mansion",id:"knockback/fake_door"}}
data modify storage luigis_mansion:data damage.durning_knockback_amount set from entity @s data.damage.attack
execute as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/damage