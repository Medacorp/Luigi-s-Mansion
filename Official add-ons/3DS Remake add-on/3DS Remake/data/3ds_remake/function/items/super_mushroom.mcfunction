tag @s add me
execute unless data storage luigis_mansion:data current_state.current_data{no_collect_animation:["3ds_remake:super_mushroom"]} as @e[tag=collector,limit=1] run function luigis_mansion:entities/luigi/animation/set/collect_item with entity @e[tag=me,limit=1] ArmorItems[3]
tag @s remove me
execute as @e[tag=collector,scores={Health=41..99,Shrunk=0},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute as @e[tag=collector,scores={Health=41..99,Shrunk=1..},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @e[tag=collector,scores={Health=..40,Shrunk=0},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute as @e[tag=collector,scores={Health=..40,Shrunk=1..},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @e[tag=collector,tag=looking_at_map,scores={Health=41..99,Shrunk=0},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.high_health player @s ~ ~ ~ 1
execute as @e[tag=collector,tag=looking_at_map,scores={Health=41..99,Shrunk=1..},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.high_health player @s ~ ~ ~ 1 2
execute as @e[tag=collector,tag=looking_at_map,scores={Health=..40,Shrunk=0},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.low_health player @s ~ ~ ~ 1
execute as @e[tag=collector,tag=looking_at_map,scores={Health=..40,Shrunk=1..},tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.low_health player @s ~ ~ ~ 1 2
execute as @e[tag=collector,tag=!gooigi,limit=1] unless score @s Health = @s MaxHealth run scoreboard players set @s Sound 15
scoreboard players add @e[tag=collector,limit=1] Health 25
execute as @e[tag=collector,limit=1] if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
execute as @e[tag=collector,limit=1] run function luigis_mansion:entities/luigi/health/sync
playsound 3ds_remake:item.super_mushroom.obtain player @a[tag=same_room] ~ ~ ~ 1