summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp Time = @s FurnitureElementLeft
scoreboard players operation #temp2 Time = @s FurnitureElementUp
scoreboard players operation #temp3 Time = @s FurnitureElementForward
execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
tag @s add me
execute positioned as @e[tag=temp,limit=1] if data entity @s data{particles:"sparkles"} run function luigis_mansion:entities/furniture/spawn/particles/sparkles
execute positioned as @e[tag=temp,limit=1] if data entity @s data{particles:"flames"} run function luigis_mansion:entities/furniture/spawn/particles/flames
execute positioned as @e[tag=temp,limit=1] if data entity @s data{particles:"dripping_water"} run function luigis_mansion:entities/furniture/spawn/particles/dripping_water
execute positioned as @e[tag=temp,limit=1] if data entity @s data{particles:"spraying_water"} run function luigis_mansion:entities/furniture/spawn/particles/spraying_water
execute positioned as @e[tag=temp,limit=1] if data entity @s data{particles:"leaking_water"} run function luigis_mansion:entities/furniture/spawn/particles/leaking_water
execute positioned as @e[tag=temp,limit=1] if data entity @s data{particles:"chilly_fog"} run function luigis_mansion:entities/furniture/spawn/particles/chilly_fog
execute if entity @s[tag=incense] positioned as @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/spawn/particles/incense
tag @s remove me
teleport @s ~ ~ ~ ~ ~
kill @e[tag=temp,limit=1]