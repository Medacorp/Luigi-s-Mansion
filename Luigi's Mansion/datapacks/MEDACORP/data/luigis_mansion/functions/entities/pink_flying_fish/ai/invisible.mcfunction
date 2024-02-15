$execute store result score #temp Time if entity @e[nbt={data:{entity:{namespace:$(namespace),id:$(id)}}},tag=visible,tag=exact_same_room]
$execute unless score #temp ActionTime matches 3.. unless entity @e[distance=..0.7,tag=!spectator,tag=player,limit=1] unless entity @e[nbt={data:{entity:{namespace:$(namespace),id:$(id)}}},tag=visible,distance=..0.7] run tag @s add visible
execute if entity @s[tag=visible] run playsound $(namespace):entity.$(id).spawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset #temp ActionTime