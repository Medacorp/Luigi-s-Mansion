scoreboard players operation #temp Move = @s Move
tag @s[tag=!in_vacuum] remove fleeing
tag @s[tag=!in_vacuum] remove hurt
execute if score #temp Move matches 1.. at @s rotated ~ 0 run function luigis_mansion:entities/boo/move_flee
scoreboard players set #temp Move -4
execute if score #temp Move matches ..-1 at @s facing entity @p[gamemode=!spectator,tag=vacuuming] feet rotated ~-180 0 run function luigis_mansion:entities/boo/move_pulled
tag @s remove in_vacuum
tag @s remove is_pulled