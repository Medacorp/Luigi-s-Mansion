playsound luigis_mansion:item.key.obtain player @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:item.item.get music @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,limit=1,scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,limit=1,scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @a[tag=collector,limit=1,scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,limit=1,scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=41..,Shrunk=0}] at @s run playsound luigis_mansion:entity.player.show_item.high_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=41..,Shrunk=1..}] at @s run playsound luigis_mansion:entity.player.show_item.high_health player @s ~ ~ ~ 1 2
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=..40,Shrunk=0}] at @s run playsound luigis_mansion:entity.player.show_item.low_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=..40,Shrunk=1..}] at @s run playsound luigis_mansion:entity.player.show_item.low_health player @s ~ ~ ~ 1 2
scoreboard players set @a[tag=collector,limit=1] Sound 70
execute as @a[tag=same_room,scores={Music=..70}] unless entity @s[scores={HealthMusic=1..}] run scoreboard players set @s Music 70
scoreboard players set @a[tag=same_room,tag=!looking_at_map,tag=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapTime 70
execute as @a[tag=same_room] unless entity @s[tag=!looking_at_map,tag=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{id:"luigis_mansion:game_boy_horror"}}}]}] run scoreboard players reset @s OpenMapFocus