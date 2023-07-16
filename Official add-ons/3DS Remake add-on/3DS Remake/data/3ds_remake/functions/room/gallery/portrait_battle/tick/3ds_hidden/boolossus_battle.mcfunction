execute as @e[tag=boolossus,tag=!intro_done,tag=!split] at @s run teleport @s 586 35 -19.0 90 0
scoreboard players set @e[tag=boolossus,tag=!intro_done,scores={Dialog=70}] Dialog 439
tag @s add catching_the_portrait_ghost
execute if entity @e[tag=boolossus,tag=!intro_done] run scoreboard players set #freeze_timer Selected 0