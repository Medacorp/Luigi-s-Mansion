$execute store result score #temp ActionTime if entity @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=visible,tag=exact_same_room]
$execute unless entity @s[scores={WaitTime=1..}] unless score #temp ActionTime matches 3.. unless entity @e[distance=..0.7,tag=luigi,limit=1] unless entity @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=visible,distance=..0.7] run tag @s add visible
execute unless entity @s[scores={WaitTime=1..}] unless score #temp ActionTime matches 3.. run scoreboard players set @s WaitTime 20
$execute if entity @s[tag=visible] run playsound $(namespace):entity.$(id).spawn hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[tag=visible] run scoreboard players set @e[nbt={data:{entity:{namespace:"$(namespace)",id:"$(id)"}}},tag=!visible,tag=exact_same_room] WaitTime 20
execute unless score #temp ActionTime matches 3.. run scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1
scoreboard players reset #temp ActionTime