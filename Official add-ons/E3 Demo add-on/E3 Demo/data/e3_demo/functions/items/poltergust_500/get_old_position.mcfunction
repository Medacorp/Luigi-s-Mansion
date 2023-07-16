summon minecraft:marker ~ ~ ~ {Tags:["position"]}
execute store result entity @e[tag=position,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=position,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=position,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ