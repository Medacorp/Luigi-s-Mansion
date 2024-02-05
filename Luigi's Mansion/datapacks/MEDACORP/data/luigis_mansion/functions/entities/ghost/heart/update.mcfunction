$teleport @s ~ ~$(up) ~ ~ ~
data modify entity @e[tag=this_heart,limit=1] ArmorItems[3].tag.CustomModelData set value 30
execute at @s[scores={Sound=0}] run playsound luigis_mansion:entity.heart.beat hostile @a[tag=same_room] ~ ~ ~1
scoreboard players set @s[scores={Sound=0}] Sound 10
scoreboard players operation @s Room = #temp Room