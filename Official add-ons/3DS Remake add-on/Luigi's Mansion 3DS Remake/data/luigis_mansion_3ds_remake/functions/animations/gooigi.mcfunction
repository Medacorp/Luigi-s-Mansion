data modify storage luigis_mansion:data luigi set value {tags:[],gliding:0b,swimming:0b,invulnerable:0b,animation:0b,mainhand:{},offhand:{},poltergust:{}}
data modify storage luigis_mansion:data luigi.tags set from entity @s Tags
execute if entity @s[tag=low_health_idle] run data modify storage luigis_mansion:data luigi.tags append value "low_health"
execute if entity @s[scores={Health=..15}] run data modify storage luigis_mansion:data luigi.tags append value "low_health"
data modify storage luigis_mansion:data luigi.gliding set from entity @s FallFlying
execute store result storage luigis_mansion:data luigi.swimming byte 1 if entity @s[tag=swimming]
execute unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareTime=1..}] unless entity @s[scores={IdleTime=..-1},tag=!idle] store result storage luigis_mansion:data luigi.invulnerable byte 1 if entity @s[scores={Invulnerable=1..},tag=!capturing_ghost]
execute store result storage luigis_mansion:data luigi.animation byte 1 run scoreboard players get @s Animation
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{is_poltergust:1b}}}]}] run data modify storage luigis_mansion:data luigi.poltergust set from entity @s Inventory[{tag:{luigis_mansion:{is_poltergust:1b}}}]
data modify storage luigis_mansion:data luigi.mainhand set from entity @s[tag=dark_room] Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]
execute if entity @s[type=!minecraft:player] run data modify storage luigis_mansion:data luigi.poltergust set value {id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{model:{body_right:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:6,mirror:{tag:{CustomModelData:7}}}},body_left:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:7,mirror:{tag:{CustomModelData:6}}}},sat_on_right:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:8,mirror:{tag:{CustomModelData:9}}}},sat_on_left:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:9,mirror:{tag:{CustomModelData:8}}}},idle_right:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:10,mirror:{tag:{CustomModelData:11}}}},idle_left:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:6,Unbreakable:1b,CustomModelData:11,mirror:{tag:{CustomModelData:10}}}}}}}}
execute if entity @s[nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}},nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}},nbt=!{SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}}] run data modify storage luigis_mansion:data luigi.mainhand set from entity @s SelectedItem
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run data modify storage luigis_mansion:data luigi.offhand set from entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]
tag @e[type=minecraft:armor_stand,tag=gooigi_model,tag=!found_owner] add this_gooigi
execute as @e[type=minecraft:armor_stand,tag=this_gooigi,tag=source,limit=1] run function luigis_mansion_3ds_remake:animations/gooigi/main
execute as @e[type=minecraft:armor_stand,tag=this_gooigi,tag=!source] at @e[tag=this_gooigi,tag=source,limit=1] run function luigis_mansion_3ds_remake:animations/gooigi/main
execute unless entity @e[tag=this_gooigi,tag=source,limit=1] as @e[type=minecraft:armor_stand,tag=this_gooigi,tag=!source] at @s run function luigis_mansion_3ds_remake:animations/gooigi/main
execute store result score #temp Time if entity @e[tag=this_gooigi,tag=source,limit=1]
execute if score #temp Time matches 2.. run tag @e[tag=this_gooigi] add dead
scoreboard players reset #temp Time
tag @e[tag=this_gooigi] remove this_gooigi