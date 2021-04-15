execute store result score #temp ForcedDamage run data get entity @s ArmorItems[3].tag.luigis_mansion.size
execute at @s positioned ~ ~1.4 ~ run tag @a[gamemode=!spectator,distance=..0.7] add heal_me
execute if score #temp ForcedDamage matches ..30 run playsound luigis_mansion:item.heart.small player @a[tag=same_room] ~ ~ ~ 1
execute if score #temp ForcedDamage matches 31.. run playsound luigis_mansion:item.heart.big player @a[tag=same_room] ~ ~ ~ 1
scoreboard players operation @a[tag=heal_me,limit=1] Health += #temp ForcedDamage
execute as @a[tag=heal_me,limit=1] if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
scoreboard players reset #temp ForcedDamage
tag @a[tag=heal_me,limit=1] remove heal_me