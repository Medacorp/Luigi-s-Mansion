execute facing entity @a[tag=expelling_me,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~-180 ~
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute rotated as @s if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute rotated as @s unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute rotated as @s unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~ ~