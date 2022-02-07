summon minecraft:marker ~ ~ ~ {Tags:["position"]}
execute store result entity @e[tag=position,limit=1] Pos[0] float 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=position,limit=1] Pos[1] float 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=position,limit=1] Pos[2] float 0.01 run scoreboard players get @s PosZ