scoreboard players operation #temp Move = @s Move
function luigis_mansion:entities/shot_needle/move_forward
scoreboard players reset #temp Move
execute if data entity @s[tag=dead] data.owner run function luigis_mansion:entities/ghost/owner_complain with entity @s data
execute unless entity @s[scores={ID=-2147483648..}] at @s positioned ~-0.5 ~-1 ~-0.5 if entity @e[dx=0,dy=1,dz=0,tag=luigi,limit=1] run function luigis_mansion:entities/shot_needle/hit_player
execute if entity @s[tag=dead] run playsound luigis_mansion:entity.nana.needle_vanish hostile @a[tag=same_room] ~ ~ ~ 1