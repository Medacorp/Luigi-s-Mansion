execute positioned ^ ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_mansion:items/poltergust_3000/vacuum
execute unless entity @s[scores={Health=..0}] run scoreboard players add #temp Steps 1
execute if entity @s[tag=hit_by_poltergust] if score @s Steps > #temp Steps run scoreboard players operation @s Steps = #temp Steps
execute unless entity @s[tag=hit_by_poltergust] if score #temp Steps matches 15 run function luigis_mansion:items/poltergust_3000/vacuuming/detach
execute unless entity @s[tag=hit_by_poltergust] if score #temp Steps matches ..14 positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/vacuuming/ghost_step