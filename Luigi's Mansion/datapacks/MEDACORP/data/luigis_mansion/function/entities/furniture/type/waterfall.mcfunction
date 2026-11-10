scoreboard players set @s[tag=!in_ice,tag=searchable_by_ice] FurnitureIce 0
scoreboard players add @s[tag=in_ice,tag=searchable_by_ice] FurnitureIce 1

execute if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=freezing_me,sort=nearest,limit=1] ID
execute if score @s[tag=searchable_by_ice] FurnitureSearch = @s FurnitureIce run function luigis_mansion:entities/furniture/search/generic

execute if entity @s[scores={RoomNoise=0},tag=!open] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 2
scoreboard players set @s[scores={RoomNoise=0},tag=!open] RoomNoise 50
execute if entity @s[tag=!open,tag=!placed_barriers] run function luigis_mansion:entities/furniture/type/waterfall/place
execute if entity @s[tag=open,tag=placed_barriers] run function luigis_mansion:entities/furniture/type/waterfall/remove
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run function luigis_mansion:entities/furniture/type/waterfall/remove
tag @s[tag=open] add idle_furniture