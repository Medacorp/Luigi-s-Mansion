summon minecraft:marker ~ ~ ~ {Tags:["target"]}
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[0] double 0.01 run scoreboard players get @s TargetX
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[1] double 0.01 run scoreboard players get @s TargetY
execute store result entity @e[tag=target,type=minecraft:marker,limit=1] Pos[2] double 0.01 run scoreboard players get @s TargetZ
execute if score #temp Move matches 1.. positioned as @s facing entity @e[tag=target] feet run function e3_demo:entities/bat/move_forward
kill @e[tag=target,type=minecraft:marker,limit=1]