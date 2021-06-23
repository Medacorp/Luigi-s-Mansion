scoreboard players operation @s LastRoom = @s Room
function luigis_mansion:other/music/set/hallway
stopsound @s music
playsound luigis_mansion:music.game_over music @s ~ ~ ~ 1000
scoreboard players set @s Music 100
gamemode spectator @s

tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.reset_mansion.1"}]}
tellraw @s {"translate":"luigis_mansion:dialog.reset_mansion.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.reset_mansion.no","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 2"}}]}
scoreboard players enable @s ResetChoice