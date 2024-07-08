tag @s[tag=!in_vacuum] remove flee
scoreboard players remove #temp Move 4
execute if score #temp Move matches ..-1 at @s facing entity @p[tag=!spectator,tag=player,tag=vacuuming] feet run function luigis_mansion:entities/boo/move/pulled
tag @s remove is_pulled

function luigis_mansion:entities/boo/ai/normal

execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40