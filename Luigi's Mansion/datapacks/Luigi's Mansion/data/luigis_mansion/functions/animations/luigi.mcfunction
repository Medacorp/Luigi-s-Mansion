tag @s add this_luigi
scoreboard players operation #temp ID = @s ID
data modify storage luigis_mansion:data luigi set value {tags:[],gliding:0b,swimming:0b,invulnerable:0b,animation:0b,pulled:0,mainhand:{},offhand:{},poltergust:{},poltergust_time:0}
data modify storage luigis_mansion:data luigi.tags set from entity @s Tags
execute if entity @s[tag=low_health_idle] run data modify storage luigis_mansion:data luigi.tags append value "low_health"
execute if entity @s[scores={Health=..30},tag=!attack] run data modify storage luigis_mansion:data luigi.tags append value "low_health"
data modify storage luigis_mansion:data luigi.gliding set from entity @s FallFlying
execute store result storage luigis_mansion:data luigi.swimming byte 1 if entity @s[tag=swimming]
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareTime=1..}] unless entity @s[scores={IdleTime=..-1},tag=!idle] store result storage luigis_mansion:data luigi.invulnerable byte 1 if entity @s[scores={Invulnerable=1..},tag=!capturing_ghost]
execute if entity @s[scores={YellTime=1..}] run data modify storage luigis_mansion:data luigi.tags append value "yelling"
scoreboard players operation #temp InteractionType = @s InteractionType
scoreboard players add #temp InteractionType 4
execute if entity @s[scores={InteractionType=1..}] store result storage luigis_mansion:data luigi.animation byte -1 run scoreboard players get #temp InteractionType
scoreboard players reset #temp InteractionType
execute store result storage luigis_mansion:data luigi.pulled byte 1 run scoreboard players get @s Pull
execute store result storage luigis_mansion:data luigi.poltergust_time byte 1 run scoreboard players get @s PoltergustTime
execute if entity @s[scores={ScareType=1..}] store result storage luigis_mansion:data luigi.animation byte -1 run scoreboard players get @s ScareType
execute if entity @s[scores={KnockbackType=1..}] store result storage luigis_mansion:data luigi.animation byte 1 run scoreboard players get @s KnockbackType
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{is_poltergust:1b}}}]}] run data modify storage luigis_mansion:data luigi.poltergust set from entity @s Inventory[{tag:{luigis_mansion:{is_poltergust:1b}}}]
data modify storage luigis_mansion:data luigi.mainhand set from entity @s[tag=dark_room] Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]
execute if entity @s[nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}},nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}},nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}}] run data modify storage luigis_mansion:data luigi.mainhand set from entity @s SelectedItem
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run data modify storage luigis_mansion:data luigi.offhand set from entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]
execute as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!found_owner] if score @s ID = #temp ID run tag @s add this_luigi
execute as @e[type=minecraft:armor_stand,tag=this_luigi,tag=source,limit=1] run function luigis_mansion:animations/luigi/main
execute as @e[type=minecraft:armor_stand,tag=this_luigi,tag=!source] at @e[tag=this_luigi,tag=source,limit=1] run function luigis_mansion:animations/luigi/main
execute unless entity @e[tag=this_luigi,tag=source,limit=1] as @e[type=minecraft:armor_stand,tag=this_luigi,tag=!source] at @s run function luigis_mansion:animations/luigi/main
scoreboard players reset #temp ID
tag @s remove this_luigi
execute store result score #temp Time if entity @e[tag=this_luigi,tag=source,limit=1]
execute if score #temp Time matches 2.. run tag @e[tag=this_luigi] add dead
scoreboard players reset #temp Time
execute if entity @e[tag=this_luigi,limit=1] run scoreboard players set @s ModelTime 0
execute unless entity @e[tag=this_luigi,limit=1] run scoreboard players add @s ModelTime 1
execute unless entity @e[tag=this_luigi,limit=1] if entity @s[scores={ModelTime=10..}] run function luigis_mansion:spawn_entities/luigi
tag @e[tag=this_luigi] remove this_luigi