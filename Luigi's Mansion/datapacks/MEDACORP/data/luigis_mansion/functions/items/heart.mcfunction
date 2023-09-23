execute store result score #temp Health run data get entity @s ArmorItems[3].tag.luigis_mansion.size
execute as @a[tag=collector,scores={Health=41..,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=collector,scores={Health=41..,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=collector,scores={Health=..40,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=collector,scores={Health=..40,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth run playsound luigis_mansion:entity.player.healed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=collector,tag=looking_at_map,scores={Health=41..,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.high_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=looking_at_map,scores={Health=41..,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.high_health player @s ~ ~ ~ 1 2
execute as @a[tag=collector,tag=looking_at_map,scores={Health=..40,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.low_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=looking_at_map,scores={Health=..40,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.healed.low_health player @s ~ ~ ~ 1 2
execute as @a[tag=collector,limit=1] unless score @s Health = @s MaxHealth run scoreboard players set @s Sound 15
scoreboard players operation @a[tag=collector,limit=1] Health += #temp Health
execute as @a[tag=collector,limit=1] if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players reset #temp Health
playsound luigis_mansion:item.heart.obtain player @a[tag=same_room] ~ ~ ~ 1