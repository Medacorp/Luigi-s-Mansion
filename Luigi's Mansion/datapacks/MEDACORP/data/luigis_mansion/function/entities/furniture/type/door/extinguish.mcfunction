tag @s remove burning
stopsound @a[tag=same_room] block luigis_mansion:block.door.burn
execute as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
setblock ^ ^ ^0.5 minecraft:air
particle minecraft:large_smoke ~ ~ ~ 0.2 0 0.2 0 4 normal @a[tag=same_room]
$data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {$(burning_flag):1b}
data remove entity @s data.burning_flag
tag @s remove affected_by_water
tag @s remove searchable_by_water