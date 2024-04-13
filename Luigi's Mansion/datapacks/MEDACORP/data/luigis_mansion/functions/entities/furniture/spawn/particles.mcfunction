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
execute positioned as @e[tag=temp,limit=1] if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"sparkles"} run function luigis_mansion:entities/furniture/spawn/particles/sparkles
execute positioned as @e[tag=temp,limit=1] if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"flames"} run function luigis_mansion:entities/furniture/spawn/particles/flames
execute positioned as @e[tag=temp,limit=1] if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"dripping_water"} run function luigis_mansion:entities/furniture/spawn/particles/dripping_water
execute positioned as @e[tag=temp,limit=1] if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"spraying_water"} run function luigis_mansion:entities/furniture/spawn/particles/spraying_water
execute positioned as @e[tag=temp,limit=1] if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"chilly_fog"} run function luigis_mansion:entities/furniture/spawn/particles/chilly_fog
tag @s remove me
kill @e[tag=temp,limit=1]