summon minecraft:marker ~ ~ ~ {Tags:["death_location","new","player","cannot_be_removed"],data:{entity:{namespace:"luigis_mansion",id:"death_location"}}}
teleport @e[tag=death_location,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=death_location,tag=new,limit=1] ID = @s ID
scoreboard players operation @e[tag=death_location,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=death_location,tag=new,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=death_location,tag=new,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=death_location,tag=new,limit=1] EntityYOffset 10
tag @e[tag=death_location,tag=new,limit=1] remove new