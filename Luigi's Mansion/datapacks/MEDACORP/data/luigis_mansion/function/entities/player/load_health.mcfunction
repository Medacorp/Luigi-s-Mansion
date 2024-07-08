$execute if data storage luigis_mansion:data current_state.current_data.dead_players[{uuid:$(UUID)}] run tag @s add killed
tag @s[tag=!killed] add revived

scoreboard players set @s[tag=revived] Health 100
tag @s[tag=revived] remove dead_player
tag @s[tag=revived] remove stop_model
tag @s[tag=revived,gamemode=!spectator] remove revived
gamemode adventure @s[tag=revived]

scoreboard players set @s[tag=killed] Health 0
tag @s[tag=revived] add dead_player
tag @s[tag=killed,gamemode=spectator] remove killed
gamemode spectator @s[tag=killed]