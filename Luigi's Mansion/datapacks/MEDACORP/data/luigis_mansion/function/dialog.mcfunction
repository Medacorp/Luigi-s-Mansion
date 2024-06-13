scoreboard players set #freeze_timer Selected 1
execute store result score #temp Dialog run data get storage luigis_mansion:data dialogs
function luigis_mansion:dialog/main
tag @a remove pause_dialog
scoreboard players reset #temp Dialog
scoreboard players reset #dialog Dialog