execute as @e[tag=searcher,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[scores={FurnitureSizeHeight=..10}] unless entity @s[tag=!hanging_furniture,tag=!standing_furniture] run summon minecraft:marker ~ ~ ~ {Tags:["interact","manual","feet"]}
execute if entity @s[scores={FurnitureSizeUp=..10}] unless entity @s[tag=!hanging_furniture,tag=!standing_furniture] run summon minecraft:marker ~ ~ ~ {Tags:["interact","manual","feet"]}
execute if entity @s[scores={FurnitureSizeRadius=..5}] unless entity @s[tag=!hanging_furniture,tag=!standing_furniture] run summon minecraft:marker ~ ~ ~ {Tags:["interact","manual","feet"]}
execute if entity @s[scores={FurnitureSizeHeight=..20},tag=!hanging_furniture,tag=!standing_furniture] run summon minecraft:marker ~ ~ ~ {Tags:["interact","manual","feet"]}
execute if entity @s[scores={FurnitureSizeUp=..20},tag=!hanging_furniture,tag=!standing_furniture] run summon minecraft:marker ~ ~ ~ {Tags:["interact","manual","feet"]}
execute if entity @s[scores={FurnitureSizeRadius=..10},tag=!hanging_furniture,tag=!standing_furniture] run summon minecraft:marker ~ ~ ~ {Tags:["interact","manual","feet"]}
tag @s add approach_trigger
function luigis_mansion:items/interact/target_furniture/get_animation
tag @s remove approach_trigger
kill @e[tag=interact,tag=manual,limit=1]
execute as @e[tag=searcher,limit=1] run function luigis_mansion:entities/furniture/type/approach/searcher
scoreboard players operation @s SearcherID = @e[tag=searcher,limit=1] ID
tag @s add search
tag @s remove can_approach
data remove entity @s data.animation
tag @e[tag=searcher,limit=1] remove searcher