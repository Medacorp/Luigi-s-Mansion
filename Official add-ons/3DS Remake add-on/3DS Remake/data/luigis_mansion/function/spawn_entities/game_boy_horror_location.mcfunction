summon minecraft:marker ~ ~ ~ {Tags:["game_boy_horror_location","new","player"]}
teleport @e[tag=game_boy_horror_location,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=game_boy_horror_location,tag=new,limit=1] ID = @s ID
scoreboard players operation @e[tag=game_boy_horror_location,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=game_boy_horror_location,tag=new,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=game_boy_horror_location,tag=new,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=game_boy_horror_location,tag=new,limit=1] EntityYOffset 10
execute if entity @s[tag=gooigi] run tag @e[tag=game_boy_horror_location,tag=new,limit=1] add gooigi_marker
tag @e[tag=game_boy_horror_location,tag=new,limit=1] remove new