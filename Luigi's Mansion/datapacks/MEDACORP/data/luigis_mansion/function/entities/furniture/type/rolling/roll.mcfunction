data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"roll"}
scoreboard players add @s[tag=rolling] FurnitureVacuum 2
execute if score @s FurnitureVacuum >= @s FurnitureSearch run scoreboard players operation @s FurnitureVacuum = @s FurnitureSearch
execute if score @s FurnitureVacuum >= @s FurnitureSearch run scoreboard players add @s[tag=rolling] FurnitureVacuum 1
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=1..10}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=11..20}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=21..30}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.1
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=31..40}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.2
execute if entity @s[scores={PoltergustSound=0,FurnitureVacuum=41..}] run playsound luigis_mansion:furniture.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.3
scoreboard players set @s[scores={PoltergustSound=0,FurnitureVacuum=1..}] PoltergustSound 3
scoreboard players remove @s[tag=!rolling] FurnitureVacuum 1
execute if entity @s[scores={FurnitureVacuum=0}] run data modify entity @s Pose set from entity @s data.default_orientation
data modify entity @s[scores={FurnitureVacuum=0}] data.animation set value {namespace:"luigis_mansion",id:"idle"}
tag @s remove rolling