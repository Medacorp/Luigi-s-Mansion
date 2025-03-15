$execute positioned ~ ~-1.4 ~ run teleport @s ~ ~$(up) ~ ~ ~
data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "default"
execute at @s[scores={Sound=0}] run playsound luigis_mansion:entity.heart.beat hostile @a[tag=same_room] ~ ~ ~1
scoreboard players set @s[scores={Sound=0}] Sound 10
scoreboard players operation @s Room = #temp Room