data modify storage luigis_mansion:data entity merge value {rotation:[0.0f,-90.0f],show_health:0b,room:0,speed:30,tags:["cutscene","up","down"]}
execute store result storage luigis_mansion:data entity.room int 1 run scoreboard players get @s Room
execute store result storage luigis_mansion:data entity.rotation[0] float 1 run random value -180..179
function luigis_mansion:spawn_entities/ghost/boo