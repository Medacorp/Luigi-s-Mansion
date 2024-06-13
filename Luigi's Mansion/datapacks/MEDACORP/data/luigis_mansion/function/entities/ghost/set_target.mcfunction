tag @e[tag=target] remove target
execute store result entity @s data.target int 1 run scoreboard players get @e[distance=..0.1,limit=1] ID
execute as @a[tag=potential_target] if score @s ID = @e[distance=..0.1,limit=1] ID run tag @s add target
execute as @e[tag=potential_target,type=!minecraft:player] if score @s ID = @a[distance=..0.1,limit=1] ID run tag @s add target
scoreboard players set @s TargetTask 0