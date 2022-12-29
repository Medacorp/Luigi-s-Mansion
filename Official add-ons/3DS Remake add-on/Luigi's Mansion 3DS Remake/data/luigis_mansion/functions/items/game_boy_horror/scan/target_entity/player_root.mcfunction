function luigis_mansion:items/game_boy_horror/scan/scanned_entity/set_player_values
function luigis_mansion:items/game_boy_horror/scan/scanned_entity/collision_box_check
function luigis_mansion:items/game_boy_horror/scan/scanned_entity/reset_player_values
execute if entity @s[tag=scanned] if entity @p[tag=scanning_player,gamemode=!spectator,tag=!gooigi,limit=1] run function luigis_mansion:items/game_boy_horror/scan/scanned_entity/player
execute if entity @s[tag=scanned] if entity @p[tag=scanning_player,gamemode=!spectator,tag=gooigi,limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"selector":"@p[tag=scanning_player,gamemode=!spectator]","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.player.scan_furniture.11"}]}
execute if entity @s[tag=scanned] run tag @e[tag=this_interact,limit=1] add entity_scanned
tag @s[tag=scanned] remove scanned