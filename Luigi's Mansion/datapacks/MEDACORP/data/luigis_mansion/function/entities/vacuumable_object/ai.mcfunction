execute if block ~ ~1.1 ~ #luigis_mansion:items_ignore run teleport @s ~ ~-0.2 ~
execute unless block ~ ~1.1 ~ #luigis_mansion:items_ignore align y run teleport @s ~ ~0.625 ~
scoreboard players add @s WaitTime 1
execute if entity @s[tag=in_vacuum] facing entity @e[tag=vacuuming_me,sort=nearest,limit=1] feet run function luigis_mansion:entities/vacuumable_object/pull
tag @s[scores={WaitTime=100}] add dead