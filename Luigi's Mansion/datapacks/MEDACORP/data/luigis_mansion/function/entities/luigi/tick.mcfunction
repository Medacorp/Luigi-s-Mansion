scoreboard players operation #temp ID = @s ID
execute as @a unless entity @s[tag=spectator,tag=!dead_player] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
execute unless entity @a[tag=this_player,limit=1] run tag @s add dead
tag @a[tag=this_player,limit=1] add has_luigi
execute if entity @s[tag=!dead] run function luigis_mansion:entities/luigi/process
tag @s add small_second_run
execute at @s[tag=!no_ai,scores={Shrunk=1..},tag=!disable_second_small_run,tag=!dead] run function luigis_mansion:entities/luigi/process
tag @s remove small_second_run
tag @s remove disable_second_small_run
tag @a[tag=this_player,limit=1] remove this_player