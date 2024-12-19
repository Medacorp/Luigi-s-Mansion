execute if entity @s[tag=separated_camera,scores={Health=1..},tag=dead_player] run function luigis_mansion:entities/player/camera/reset
execute if entity @s[scores={Health=1..},tag=dead_player] run function luigis_mansion:entities/player/remove_dead_entry with entity @s

tag @s[tag=had_prevent_item_lock,tag=disable_items] remove was_in_dialog
tag @s[tag=had_prevent_item_lock,tag=disable_items] remove in_dialog
tag @s remove had_prevent_item_lock
execute if entity @s[tag=!in_dialog,tag=!was_in_dialog] run function #luigis_mansion:items/reset_disabled
tag @s[tag=!in_dialog,tag=!was_in_dialog] remove disable_items
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/tick
attribute @s[tag=flipped_gravity,tag=!separated_camera] minecraft:gravity base set -0.08
attribute @s[tag=!flipped_gravity,tag=!separated_camera] minecraft:gravity base set 0.08

execute if entity @s[scores={UseItem=1..}] run function luigis_mansion:entities/player/run_command_at_model {command:"scoreboard players operation @e[tag=this_luigi,limit=1] UseItem = @s UseItem"}
scoreboard players set @s UseItem 0

function luigis_mansion:entities/player/health_display

execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health
execute if entity @s[scores={Damage=..99}] run function luigis_mansion:entities/player/heal
scoreboard players reset @s Damage
effect give @s[scores={Food=3..}] minecraft:hunger 1 255 true
effect give @s[scores={Food=..0}] minecraft:saturation 1 0 true

tag @s[tag=!dead_player] remove spectator

effect give @s minecraft:invisibility infinite 0 true
execute if entity @s[tag=!has_luigi,tag=!dead_player,tag=!gooigi] run function luigis_mansion:spawn_entities/luigi
execute if entity @s[tag=!has_luigi,tag=!dead_player,tag=gooigi] run function 3ds_remake:spawn_entities/gooigi/player
tag @s remove has_luigi