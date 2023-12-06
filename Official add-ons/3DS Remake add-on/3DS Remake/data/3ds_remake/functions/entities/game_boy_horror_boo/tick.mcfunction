execute facing entity @a[tag=looking_at_map,limit=1] feet rotated ~ -90 run teleport @s ~ ~ ~ ~ ~
function 3ds_remake:old_animations/boo/laugh
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @a[tag=opening_map,limit=1] run tag @s add dead