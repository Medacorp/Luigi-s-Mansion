execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
scoreboard players operation #temp MirrorX *= #100 Constants
scoreboard players add #temp MirrorX 50
execute store result score #temp ActionTime run data get entity @s Pos[0] 100
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime
execute if entity @s[tag=walking,tag=!flipped_gravity] at @e[type=minecraft:marker,tag=temp,limit=1] run particle minecraft:dust{color:8355711,scale:1.2f} ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[tag=running,tag=!flipped_gravity] at @e[type=minecraft:marker,tag=temp,limit=1] run particle minecraft:dust{color:8355711,scale:2f} ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[tag=sneaking,tag=!flipped_gravity] at @e[type=minecraft:marker,tag=temp,limit=1] run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[tag=walking,tag=flipped_gravity] at @e[type=minecraft:marker,tag=temp,limit=1] run particle minecraft:dust{color:8355711,scale:1.2f} ~ ~1.8 ~ 0 0 0 0 1
execute if entity @s[tag=running,tag=flipped_gravity] at @e[type=minecraft:marker,tag=temp,limit=1] run particle minecraft:dust{color:8355711,scale:2f} ~ ~1.8 ~ 0 0 0 0 1
execute if entity @s[tag=sneaking,tag=flipped_gravity] at @e[type=minecraft:marker,tag=temp,limit=1] run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~1.8 ~ 0 0 0 0 1
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players reset #temp ActionTime