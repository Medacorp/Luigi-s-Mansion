summon minecraft:marker ^ ^-0.6 ^1 {CustomName:'{"translate":"luigis_mansion:entity.ice_spike"}',Tags:["moving_ice","this_entity"]}
execute positioned ^ ^-0.6 ^1 facing entity @s feet rotated ~ 0 run teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity