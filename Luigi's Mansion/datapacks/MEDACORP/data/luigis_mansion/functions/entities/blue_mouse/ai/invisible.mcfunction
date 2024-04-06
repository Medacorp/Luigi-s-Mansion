$execute store result score #temp ActionTime if entity @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=visible,tag=exact_same_room]
execute unless entity @s[scores={WaitTime=1..}] unless score #temp ActionTime matches 3.. run function luigis_mansion:entities/ghost/set_random_path
execute unless entity @s[scores={WaitTime=1..}] unless data entity @s data.path run scoreboard players set @s WaitTime 40
execute at @s if entity @e[distance=..0.7,tag=!spectator,tag=player,limit=1] run data remove entity @s data.path
execute if data entity @s data.path run tag @s add visible
$execute if data entity @s data.path run scoreboard players set @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=!visible,tag=exact_same_room] WaitTime 40
execute if data entity @s data.path run function luigis_mansion:entities/blue_mouse/set_home
execute unless score #temp ActionTime matches 3.. run scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1
scoreboard players reset #temp ActionTime