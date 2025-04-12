function luigis_mansion:items/poltergust_3000/remove_element
function luigis_mansion:entities/player/camera/reset
scoreboard players set @s Room -1
function luigis_mansion:other/music/set/force/silence
function luigis_mansion:entities/player/run_command_as_model {command:"scoreboard players set @s Room -1"}
function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}
$function $(namespace):room/$(id)/enter