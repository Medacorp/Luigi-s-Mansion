scoreboard players operation #temp Room = @s Room
execute as @a[gamemode=!spectator] if score @s Room = #temp Room run tag @s add spawn_boo
scoreboard players reset #temp Room
tag @s[tag=dead] remove dead
execute if entity @a[tag=spawn_boo,limit=1] run function luigis_mansion:entities/boo_marker/spawn
execute if entity @a[tag=spawn_boo,limit=1] run tag @s add dead
execute if entity @s[nbt={Age:599},tag=!dead] run function #luigis_mansion:entities/boo_marker/warp
tag @a[tag=spawn_boo] remove spawn_boo