scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get #temp ID
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
tag @s add me
tag @s remove vacuuming
summon minecraft:marker ~ ~ ~ {Tags:["interact","poltergust","water"]}
function e3_demo:items/poltergust_500/expel_water
tag @s add expelling_water
tag @e[tag=hit_by_poltergust] remove hit_by_poltergust
kill @e[type=minecraft:marker,tag=interact,limit=1]
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp Room
scoreboard players reset #temp ID
scoreboard players reset #interact
tag @s remove me