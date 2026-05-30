execute unless data entity @s data.scan_result{cleared_only:1b} run tag @s add cleared_room
execute if data entity @s data.scan_result{cleared_only:1b} run function luigis_mansion:room/dark_room
execute if entity @s[tag=cleared_room,tag=was_dark_room] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"3ds_remake",id:"wind_warp_enabled"},progress:0,room:0}
execute if entity @s[tag=cleared_room,tag=was_dark_room] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
tag @s remove was_dark_room
tag @s[tag=!cleared_room] add was_dark_room
$teleport @e[tag=temp,limit=1] ^ ^ ^$(forward)
$execute if entity @s[tag=cleared_room] run particle minecraft:crit ^ ^ ^$(forward) 0.6 0.6 0.6 0 1 normal @a[tag=same_room]
execute if entity @s[tag=cleared_room,scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_x
execute if entity @s[tag=cleared_room,scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/mirror_z