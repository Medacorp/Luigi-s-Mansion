tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.0"}]}
stopsound @a[scores={Room=39}] music
playsound luigis_mansion:music.mini_game_failure music @a[scores={Room=39}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=39}] Music 40
scoreboard players set @a[scores={Room=39}] MusicType 7
scoreboard players set #temp Time 1
scoreboard players set #twins_room Wave 7
function luigis_mansion:room/normal/twins_room/search_box_1
function luigis_mansion:room/normal/twins_room/search_box_2
function luigis_mansion:room/normal/twins_room/search_box_3
function luigis_mansion:room/normal/twins_room/search_box_4
function luigis_mansion:room/normal/twins_room/search_box_5
scoreboard players reset #temp Time