execute if block ~ ~ ~ minecraft:air run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:light run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:water run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:air if score #temp MirrorX matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/mirror/x
execute if block ~ ~ ~ minecraft:light if score #temp MirrorX matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/mirror/x
execute if block ~ ~ ~ minecraft:water if score #temp MirrorX matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/mirror/x
execute if block ~ ~ ~ minecraft:air if score #temp MirrorZ matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/mirror/z
execute if block ~ ~ ~ minecraft:light if score #temp MirrorZ matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/mirror/z
execute if block ~ ~ ~ minecraft:water if score #temp MirrorZ matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/mirror/z