tag @e[tag=target] remove target
execute store result entity @s data.target int 1 run scoreboard players get @e[tag=player,distance=..0.1,limit=1] ID
execute as @e[tag=potential_target] if score @s ID = @e[tag=player,distance=..0.1,limit=1] ID run tag @s add target