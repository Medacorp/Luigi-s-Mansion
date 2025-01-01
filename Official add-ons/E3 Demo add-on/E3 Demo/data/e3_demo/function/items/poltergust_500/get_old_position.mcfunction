summon minecraft:marker ~ ~ ~ {Tags:["position","remove_from_existence"]}
execute store result entity @e[tag=position,limit=1] Pos[0] double 0.01 run scoreboard players get @s OtherX
execute store result entity @e[tag=position,limit=1] Pos[1] double 0.01 run scoreboard players get @s OtherY
execute store result entity @e[tag=position,limit=1] Pos[2] double 0.01 run scoreboard players get @s OtherZ