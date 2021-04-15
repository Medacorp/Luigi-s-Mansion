effect give @a[dx=0,dy=0,dz=0,gamemode=!spectator] minecraft:instant_damage
scoreboard players set @a[dx=0,dy=0,dz=0,gamemode=!spectator] ForcedDamage 4
tag @e[dx=0,dy=0,dz=0,tag=biff_atlas] add hit
tag @s add me
execute as @e[dx=0,dy=0,dz=0,tag=biff_atlas] facing entity @e[tag=me,limit=1] feet rotated ~-180 0 positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @s remove me