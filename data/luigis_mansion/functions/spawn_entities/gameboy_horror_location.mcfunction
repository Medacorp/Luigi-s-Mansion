summon minecraft:marker ~ ~ ~ {Tags:["gameboy_horror_location","new"]}
teleport @e[tag=gameboy_horror_location,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=gameboy_horror_location,tag=new,limit=1] ID = @s ID
scoreboard players operation @e[tag=gameboy_horror_location,tag=new,limit=1] Room = @s Room
tag @e[tag=gameboy_horror_location,tag=new,limit=1] remove new