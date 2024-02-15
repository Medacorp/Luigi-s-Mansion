$execute if entity @s[tag=flee,tag=!freeze] run playsound $(namespace):entity.$(id).flee hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[tag=!flee,tag=!freeze,tag=!basher] run playsound $(namespace):entity.$(id).ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Sound 10