scoreboard players operation #temp Move = @s Move
function luigis_mansion:entities/shot_needle/move_forward
scoreboard players reset #temp Move
execute unless entity @s[scores={ID=-2147483648..}] at @s positioned ~-0.5 ~-1 ~-0.5 if entity @e[dx=0,dy=1,dz=0,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/shot_needle/hit_player
execute if entity @s[tag=dead] run playsound luigis_mansion:entity.nana.needle_vanish hostile @a[tag=same_room] ~ ~ ~ 1