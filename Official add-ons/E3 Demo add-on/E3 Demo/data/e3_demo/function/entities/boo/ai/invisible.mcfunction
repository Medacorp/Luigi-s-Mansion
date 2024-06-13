$execute store result score #temp ActionTime if entity @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=visible,tag=exact_same_room]
$execute unless score #temp ActionTime matches 2.. unless entity @e[distance=..0.7,tag=!spectator,tag=player,limit=1] unless entity @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
execute if entity @s[tag=visible] at @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] run function luigis_mansion:entities/ghost/set_target
scoreboard players set @s[tag=visible] Time 40