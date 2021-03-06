tag @s remove scanning_player
execute if entity @s[tag=scanning] unless entity @s[scores={WarpTime=95..96}] run function luigis_mansion:items/gameboy_horror/freeze_player
execute if entity @a[limit=1,scores={GBHCall=1..}] if entity @s[tag=!warp] unless entity @s[scores={ScareType=2..}] run function luigis_mansion:items/gameboy_horror/freeze_player

execute unless entity @s[scores={Shrunk=1..}] if entity @s[advancements={luigis_mansion:lab/lab=true},nbt=!{Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/give
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/tick
execute if entity @s[scores={UseItem=1..},tag=gameboy_horror_selected,tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute if entity @s[scores={UseItem=1..,KnockbackType=0},tag=open_gbh_menu,tag=gameboy_horror_selected,tag=!looking_at_map,tag=!scanning] unless entity @s[scores={ScareType=1..}] unless entity @s[scores={IdleTime=..-1},tag=!idle] run function luigis_mansion:items/gameboy_horror/double_use
execute if entity @s[scores={UseItem=1..,KnockbackType=0},tag=!open_gbh_menu,tag=gameboy_horror_selected,tag=!looking_at_map,tag=!scanning] unless entity @s[scores={ScareType=1..}] unless entity @s[scores={IdleTime=..-1},tag=!idle] run function luigis_mansion:items/gameboy_horror/choice
execute if entity @s[scores={GBHChoice=1}] run function luigis_mansion:items/gameboy_horror/map/open
execute if entity @s[scores={GBHChoice=2}] run function luigis_mansion:items/gameboy_horror/enable_scan
execute if entity @s[scores={UseItem=1..},tag=gameboy_horror_selected,tag=scanning,tag=!warp] run function luigis_mansion:items/gameboy_horror/scan
execute if entity @s[tag=gameboy_horror_selected] run function luigis_mansion:items/gameboy_horror/show_ghost_presence
execute if entity @s[scores={GBHChoice=3}] run function luigis_mansion:items/gameboy_horror/show_items
execute if entity @s[scores={GBHChoice=4}] run function luigis_mansion:items/gameboy_horror/show_caught_ghosts
execute if entity @s[scores={GBHCall=1..},tag=gameboy_horror_selected] run function luigis_mansion:items/gameboy_horror/answer
execute if entity @s[scores={GBHWait=1200}] run function luigis_mansion:items/gameboy_horror/answer
tag @s[tag=!gameboy_horror_selected,tag=!warp] remove scanning
tag @s[tag=looking_at_map] remove open_gbh_menu
tag @s[tag=!gameboy_horror_selected] remove open_gbh_menu
tag @s[scores={ScareType=2..}] remove scanning
tag @s remove gameboy_horror_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}}] add gameboy_horror_selected
execute unless entity @s[scores={KnockbackType=0},tag=gameboy_horror_selected,tag=!looking_at_map,tag=!scanning] run trigger GBHChoice set 0
execute if entity @s[scores={ScareType=1..}] run trigger GBHChoice set 0
execute if entity @s[scores={IdleTime=..-1},tag=!idle] run trigger GBHChoice set 0
execute unless entity @s[scores={GBHCall=0..}] run scoreboard players set @s GBHCall 0
execute if entity @s[scores={GBHCall=1..,GBHWait=20}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.player.ringing_gameboy_horror"}]}
execute if entity @s[scores={GBHCall=1..,GBHWait=20..},tag=!high_health_idle,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={GBHCall=1..}] run function luigis_mansion:other/music/set/gameboy_horror_calling
scoreboard players add @s[scores={GBHCall=1..},tag=!gameboy_horror_selected] GBHWait 1

execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/change_screen

execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function #luigis_mansion:items/gameboy_horror/radar_type
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:5,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_radar_red
execute if entity @s[scores={ForceRadar=1}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.gameboy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players reset @s ForceRadar