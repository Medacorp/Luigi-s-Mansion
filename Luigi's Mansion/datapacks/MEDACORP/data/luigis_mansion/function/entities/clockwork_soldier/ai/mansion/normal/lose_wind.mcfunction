scoreboard players set @s ActionTime 0
tag @s remove attack
tag @s add complain
tag @s add stunable
tag @s add no_wind
tag @e[tag=this_wind,limit=1] add vacuumable
data remove entity @e[tag=this_wind,limit=1] ArmorItems[3].components."minecraft:custom_data".owner
tag @e[tag=this_wind,limit=1] remove this_wind