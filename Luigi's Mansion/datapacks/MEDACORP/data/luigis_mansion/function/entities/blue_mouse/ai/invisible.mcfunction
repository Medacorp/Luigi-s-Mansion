execute unless entity @s[scores={WaitTime=1..}] run function luigis_mansion:entities/ghost/set_random_path
execute unless entity @s[scores={WaitTime=1..}] unless data entity @s data.path run scoreboard players set @s WaitTime 40
execute at @s if entity @e[distance=..0.7,tag=luigi,limit=1] run data remove entity @s data.path
execute if data entity @s data.path run tag @s add visible
$execute if data entity @s data.path as @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=!visible] unless entity @s[scores={WaitTime=1..}] run scoreboard players set @s WaitTime 40
execute if data entity @s data.path run function luigis_mansion:entities/blue_mouse/set_home
scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1