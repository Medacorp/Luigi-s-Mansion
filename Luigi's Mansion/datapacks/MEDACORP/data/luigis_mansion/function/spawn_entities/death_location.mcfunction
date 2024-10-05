summon minecraft:marker ~ ~ ~ {Tags:["death_location","new","player","same_room_players_only","cannot_be_removed"],data:{entity:{namespace:"luigis_mansion",id:"death_location"}}}
teleport @e[tag=death_location,tag=new,limit=1] ~ ~ ~ ~ ~
execute in minecraft:overworld run loot spawn 27 0 0 loot luigis_mansion:gameplay/get_player_name
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"source":"entity","entity":"@e[type=minecraft:item,nbt={Item:{id:\'minecraft:player_head\'}},limit=1]","type":"nbt","nbt":"Item.components.\'minecraft:profile\'.name"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute in minecraft:overworld run data modify entity @e[tag=death_location,tag=new,limit=1] CustomName set from block 27 0 0 front_text.messages[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run kill @e[x=27.5,y=0.0,z=0.5,distance=..0.7,type=minecraft:item,limit=1]
scoreboard players operation @e[tag=death_location,tag=new,limit=1] ID = @s ID
scoreboard players operation @e[tag=death_location,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=death_location,tag=new,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=death_location,tag=new,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=death_location,tag=new,limit=1] EntityYOffset 10
tag @e[tag=death_location,tag=new,limit=1] remove new