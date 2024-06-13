tag @s remove burning
stopsound @a[tag=same_room] block luigis_mansion:block.door.burn
playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
scoreboard players set @a[tag=same_room] Music 30
setblock ^ ^ ^0.5 minecraft:air
particle minecraft:large_smoke ~ ~ ~ 0.2 0 0.2 0 4 normal @a[tag=same_room]
$data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {$(burning_flag):1b}
data remove entity @s ArmorItems[3].components."minecraft:custom_data".burning_flag
tag @s remove affected_by_water
tag @s remove searchable_by_water