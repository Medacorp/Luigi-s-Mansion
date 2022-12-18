summon minecraft:marker ~ ~ ~ {Tags:["game_boy_horror_location","new"]}
teleport @e[tag=game_boy_horror_location,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=game_boy_horror_location,tag=new,limit=1] ID = @s ID
scoreboard players operation @e[tag=game_boy_horror_location,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=game_boy_horror_location,tag=new,limit=1] EntitySizeW 8
scoreboard players set @e[tag=game_boy_horror_location,tag=new,limit=1] EntitySizeH 20
scoreboard players set @e[tag=game_boy_horror_location,tag=new,limit=1] EntityYOffset 10
tag @e[tag=game_boy_horror_location,tag=new,limit=1] remove new