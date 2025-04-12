execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
scoreboard players set @s Room 0
function luigis_mansion:entities/player/run_command_as_model {command:"scoreboard players set @s Room 0"}
function luigis_mansion:other/music/set/force/silence
scoreboard players operation @s Health = @s MaxHealth
$function $(namespace):room/exterior/enter/$(id)