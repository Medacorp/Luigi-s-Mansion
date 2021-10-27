summon minecraft:marker ~ ~ ~ {Tags:["target"]}
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[2] double 0.01 run scoreboard players get @s HomeZ
function luigis_mansion:animations/boo/appear
execute if entity @e[tag=target,type=minecraft:marker,limit=1,distance=..1] run function luigis_mansion:entities/boo/appeared
scoreboard players set #temp Move 12
execute if score #temp Move matches 1.. positioned as @s facing entity @e[tag=target] feet run function luigis_mansion:entities/boo/force_move_forward
kill @e[tag=target,type=minecraft:marker,limit=1]