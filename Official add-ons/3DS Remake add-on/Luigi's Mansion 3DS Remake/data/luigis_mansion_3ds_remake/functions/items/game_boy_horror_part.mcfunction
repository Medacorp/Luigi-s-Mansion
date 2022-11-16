data merge storage luigis_mansion_3ds_remake:data {obtained_gameboy_horror_part:1b}
execute if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.player.game_boy_horror_part"}]}
execute if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.player.game_boy_horror_part.more"}]}
playsound luigis_mansion_3ds_remake:item.game_boy_horror_part.obtain player @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:item.item.get music @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,tag=!gooigi,limit=1,scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,tag=!gooigi,limit=1,scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @a[tag=collector,tag=!gooigi,limit=1,scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,tag=!gooigi,limit=1,scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=collector,tag=!gooigi,tag=looking_at_map,limit=1,scores={Health=41..,Shrunk=0}] at @s run playsound luigis_mansion:entity.player.show_item.high_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=!gooigi,tag=looking_at_map,limit=1,scores={Health=41..,Shrunk=1..}] at @s run playsound luigis_mansion:entity.player.show_item.high_health player @s ~ ~ ~ 1 2
execute as @a[tag=collector,tag=!gooigi,tag=looking_at_map,limit=1,scores={Health=..40,Shrunk=0}] at @s run playsound luigis_mansion:entity.player.show_item.low_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=!gooigi,tag=looking_at_map,limit=1,scores={Health=..40,Shrunk=1..}] at @s run playsound luigis_mansion:entity.player.show_item.low_health player @s ~ ~ ~ 1 2
scoreboard players set @a[tag=collector,tag=!gooigi,limit=1] Sound 70
scoreboard players set @a[tag=same_room,scores={Music=..70}] Music 70