execute unless entity @s[scores={Move=-2147483647..}] run scoreboard players add @s Move 0
execute if block ~ ~-0.1 ~ #luigis_mansion:items_ignore run tag @s[tag=!falling,scores={Move=0}] add falling
scoreboard players remove @s[tag=falling] Move 2
scoreboard players set @s[scores={Move=..-70}] Move -70
tag @s[tag=!falling,scores={Move=1..2}] add falling
scoreboard players remove @s[tag=!falling,scores={Move=1..}] Move 2

execute if entity @s[scores={Move=0}] if block ~ ~-0.1 ~ #minecraft:stairs[half=bottom] run function luigis_mansion:entities/item/physics/step/stairs

scoreboard players operation #temp Move = @s Move
execute if entity @s[scores={Move=..-1}] run scoreboard players operation #temp Move *= #-1 Constants
execute if entity @s[scores={Move=..-1}] if score #temp Move matches 1.. run function luigis_mansion:entities/item/physics/step/fall
execute if entity @s[scores={Move=1..}] if score #temp Move matches 1.. run function luigis_mansion:entities/item/physics/step/fly
scoreboard players reset #temp Move
tag @s remove floor_bounce