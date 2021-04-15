scoreboard players reset @s Room
stopsound @s music
playsound luigis_mansion:music.game_over music @s ~ ~ ~ 1000
scoreboard players set @s MusicType 6
scoreboard players set @s Music 100
gamemode spectator @s

tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.reset_mansion.1"}]}
tellraw @s {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.reset_mansion.yes","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.reset_mansion.no","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 2"}}]}
scoreboard players enable @s ResetChoice