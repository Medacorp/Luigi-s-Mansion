scoreboard players operation #temp Move = @s Move
execute if score #temp Move matches 15.. unless entity @e[tag=bowser_body,distance=..4] run scoreboard players remove #temp Move 10
tag @s[tag=!in_vacuum] remove flee
tag @s[tag=!in_vacuum] remove hurt
execute if score #temp Move matches 1.. at @s rotated ~ 0 run function luigis_mansion:old_entities/king_boo/move_flee
execute if score #temp Move matches ..-1 at @s facing entity @p[tag=!spectator,tag=player,tag=vacuuming] feet rotated ~-180 0 run function luigis_mansion:old_entities/king_boo/move_pulled
tag @s remove in_vacuum
tag @s remove is_pulled