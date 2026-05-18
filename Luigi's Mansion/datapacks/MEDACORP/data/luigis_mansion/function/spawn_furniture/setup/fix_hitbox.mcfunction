execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeRadius=..-1}] FurnitureSizeRadius *= #-1 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeWidth=..-1}] FurnitureSizeWidth *= #-1 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeHeight=..-1}] FurnitureSizeHeight *= #-1 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeLeft=..-1}] FurnitureSizeLeft *= #-1 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeUp=..-1}] FurnitureSizeUp *= #-1 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeForward=..-1}] FurnitureSizeForward *= #-1 Constants
execute as @e[tag=this_entity,limit=1] unless score @s FurnitureSizeWidth matches 2.. run scoreboard players set @s[scores={FurnitureSizeHeight=1..}] FurnitureSizeWidth 2
execute as @e[tag=this_entity,limit=1] unless score @s FurnitureSizeHeight matches 2.. run scoreboard players set @s[scores={FurnitureSizeWidth=1..}] FurnitureSizeHeight 1
execute as @e[tag=this_entity,limit=1] unless score @s FurnitureSizeLeft matches 2.. run scoreboard players set @s[scores={FurnitureSizeUp=1..}] FurnitureSizeLeft 2
execute as @e[tag=this_entity,limit=1] unless score @s FurnitureSizeLeft matches 2.. run scoreboard players set @s[scores={FurnitureSizeForward=1..}] FurnitureSizeLeft 2
execute as @e[tag=this_entity,limit=1] unless score @s FurnitureSizeUp matches 2.. run scoreboard players set @s[scores={FurnitureSizeLeft=1..}] FurnitureSizeUp 1
execute as @e[tag=this_entity,limit=1] unless score @s FurnitureSizeForward matches 2.. run scoreboard players set @s[scores={FurnitureSizeLeft=1..}] FurnitureSizeForward 2
execute as @e[tag=this_entity,limit=1] run scoreboard players set @s[scores={FurnitureSizeHeight=1},tag=!standing_furniture,tag=!hanging_furniture] FurnitureSizeWidth 2
execute as @e[tag=this_entity,limit=1] run scoreboard players set @s[scores={FurnitureSizeUp=1},tag=!standing_furniture,tag=!hanging_furniture] FurnitureSizeUp 2
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeWidth=1..}] FurnitureSizeWidth /= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeWidth=1..}] FurnitureSizeWidth *= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeHeight=1..},tag=!standing_furniture,tag=!hanging_furniture] FurnitureSizeHeight /= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeHeight=1..},tag=!standing_furniture,tag=!hanging_furniture] FurnitureSizeHeight *= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeLeft=1..}] FurnitureSizeLeft /= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeLeft=1..}] FurnitureSizeLeft *= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeUp=1..},tag=!standing_furniture,tag=!hanging_furniture] FurnitureSizeUp /= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeUp=1..},tag=!standing_furniture,tag=!hanging_furniture] FurnitureSizeUp *= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeForward=1..}] FurnitureSizeForward /= #2 Constants
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s[scores={FurnitureSizeForward=1..}] FurnitureSizeForward *= #2 Constants