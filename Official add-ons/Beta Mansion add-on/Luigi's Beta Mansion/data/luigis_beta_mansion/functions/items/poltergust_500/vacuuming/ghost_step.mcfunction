execute positioned ^ ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_beta_mansion:items/poltergust_500/vacuum
execute positioned ^ ^0.5 ^ facing entity @a[tag=me,limit=1] feet run function luigis_beta_mansion:items/poltergust_500/vacuum
execute positioned ^ ^-0.5 ^ facing entity @a[tag=me,limit=1] feet run function luigis_beta_mansion:items/poltergust_500/vacuum
execute positioned ^0.5 ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_beta_mansion:items/poltergust_500/vacuum
execute positioned ^-0.5 ^ ^ facing entity @a[tag=me,limit=1] feet run function luigis_beta_mansion:items/poltergust_500/vacuum
scoreboard players add #temp Steps 1
execute if score #temp Steps matches 10.. run tag @s[distance=..0.7] add can_pull
execute if entity @s[distance=..0.7] if score @s Steps > #temp Steps run scoreboard players operation @s Steps = #temp Steps
execute unless entity @s[distance=..0.7] if score #temp Steps matches 15 run function luigis_beta_mansion:items/poltergust_500/vacuuming/detach
execute unless entity @s[distance=..0.7] if score #temp Steps matches ..14 positioned ^ ^ ^0.5 run function luigis_beta_mansion:items/poltergust_500/vacuuming/ghost_step