execute at @e[tag=wool,tag=in_vacuum,limit=1,sort=nearest] run tag @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] add me
execute unless entity @e[tag=shot_needle,limit=1] run function luigis_mansion:entities/nana/attack
execute at @s facing entity @a[tag=me,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @a[tag=me,limit=1] remove me