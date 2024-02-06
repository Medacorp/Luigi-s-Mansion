$execute if entity @s[tag=flee,tag=!freeze] run playsound $(namespace):entity.$(id).flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=flee,tag=!freeze] Sound 40