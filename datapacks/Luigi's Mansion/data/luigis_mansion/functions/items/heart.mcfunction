execute store result score #temp ForcedDamage run data get entity @s ArmorItems[3].tag.luigis_mansion.size
execute at @s positioned ~ ~1.6 ~ run tag @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] add heal_me
execute as @e[tag=gameboy_horror_location,tag=heal_me] run function luigis_mansion:entities/gameboy_horror_location/bring_back_player
execute at @s positioned ~ ~1.6 ~ run tag @p[tag=same_room,gamemode=!spectator] add heal_me
execute as @a[tag=heal_me,scores={Health=41..99,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.heal.high_health player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=heal_me,scores={Health=41..99,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.heal.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=heal_me,scores={Health=..40,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.heal.low_health player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=heal_me,scores={Health=..40,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth at @s run playsound luigis_mansion:entity.player.heal.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=heal_me,limit=1] unless score @s Health = @s MaxHealth run scoreboard players set @s Sound 15
scoreboard players operation @a[tag=heal_me,limit=1] Health += #temp ForcedDamage
execute as @a[tag=heal_me,limit=1] if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players reset #temp ForcedDamage
tag @a remove heal_me
playsound luigis_mansion:item.heart.obtain player @a[tag=same_room] ~ ~ ~ 1