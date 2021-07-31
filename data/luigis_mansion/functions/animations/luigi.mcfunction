tag @s add this_luigi
scoreboard players operation #temp ID = @s ID
data modify storage luigis_mansion:data luigi set value {tags:[],gliding:0b,swimming:0b,mainhand:{},offhand:{}}
data modify storage luigis_mansion:data luigi.tags set from entity @s Tags
data modify storage luigis_mansion:data luigi.gliding set from entity @s FallFlying
execute store result storage luigis_mansion:data luigi.swimming byte 1 if entity @s[tag=swimming]
data modify storage luigis_mansion:data luigi.mainhand set from entity @s SelectedItem
data modify storage luigis_mansion:data luigi.offhand set from entity @s Inventory[{Slot:-106b}]
execute as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!found_owner] if score @s ID = #temp ID run tag @s add this_luigi
execute as @e[type=minecraft:armor_stand,tag=this_luigi,tag=source,limit=1] run function luigis_mansion:animations/luigi/main
execute as @e[type=minecraft:armor_stand,tag=this_luigi,tag=!source] at @e[tag=this_luigi,tag=source,limit=1] run function luigis_mansion:animations/luigi/main
execute unless entity @e[tag=this_luigi,tag=source,limit=1] as @e[type=minecraft:armor_stand,tag=this_luigi,tag=!source] at @s run function luigis_mansion:animations/luigi/main
scoreboard players reset #temp ID
tag @s remove this_luigi
execute unless entity @e[tag=this_luigi,limit=1] if entity @s[tag=no_model] run function luigis_mansion:spawn_entities/luigi
tag @s remove no_model 
execute unless entity @e[tag=this_luigi,limit=1] run tag @s add no_model 
tag @e[tag=this_luigi] remove this_luigi