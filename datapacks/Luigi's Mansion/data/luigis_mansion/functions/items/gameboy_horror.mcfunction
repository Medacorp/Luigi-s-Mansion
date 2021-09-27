tag @s remove scanning_player
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/tick
execute if entity @s[scores={UseItem=1},tag=gameboy_horror_selected,tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute if entity @s[scores={UseItem=1},tag=gameboy_horror_selected,tag=!looking_at_map,tag=!scanning,tag=!grabbed,tag=!tripping] unless entity @s[scores={GBHCall=1..}] run function luigis_mansion:items/gameboy_horror/choice
execute if entity @s[scores={GBHChoice=1}] unless entity @s[scores={GBHCall=1..}] run function luigis_mansion:items/gameboy_horror/map/open
execute if entity @s[scores={GBHChoice=2}] run function luigis_mansion:items/gameboy_horror/enable_scan
execute if entity @s[scores={UseItem=1},tag=gameboy_horror_selected,tag=scanning,tag=!warp] run function luigis_mansion:items/gameboy_horror/scan
execute if entity @s[tag=gameboy_horror_selected] run function luigis_mansion:items/gameboy_horror/show_ghost_presence
execute if entity @s[scores={GBHChoice=3}] run function luigis_mansion:items/gameboy_horror/show_items
execute if entity @s[scores={GBHChoice=4}] run function luigis_mansion:items/gameboy_horror/show_caught_ghosts
execute if entity @s[scores={GBHCall=1..},tag=gameboy_horror_selected] run function luigis_mansion:items/gameboy_horror/answer
execute if entity @s[scores={GBHWait=1200}] run function luigis_mansion:items/gameboy_horror/answer
tag @s[tag=!gameboy_horror_selected,tag=!warp] remove scanning
tag @s remove gameboy_horror_selected
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}}] add gameboy_horror_selected
execute if entity @s[tag=!gameboy_horror_selected] run trigger GBHChoice set 0
execute if entity @s[tag=grabbed] run trigger GBHChoice set 0
execute if entity @s[tag=tripping] run trigger GBHChoice set 0
execute unless entity @s[scores={GBHCall=0..}] run scoreboard players set @s GBHCall 0
execute if entity @s[scores={GBHCall=1..}] unless entity @s[scores={MusicGroup=0,MusicType=2..5}] unless entity @s[scores={MusicGroup=0,MusicType=22}] unless entity @s[scores={MusicGroup=0,MusicType=24}] unless entity @s[scores={MusicGroup=0,MusicType=38}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27}] run function luigis_mansion:other/music/set/gameboy_horror_calling
scoreboard players add @s[scores={GBHCall=1..},tag=!gameboy_horror_selected] GBHWait 1

attribute @s[tag=scanning] minecraft:generic.movement_speed base set 0
attribute @s[tag=gameboy_horror_selected,scores={GBHCall=1..}] minecraft:generic.movement_speed base set 0
execute unless entity @s[tag=gameboy_horror_selected,scores={GBHCall=1..}] run attribute @s[tag=!scanning] minecraft:generic.movement_speed base set 0.10000000149011612

execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/change_screen

execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function #luigis_mansion:items/gameboy_horror/change_radar
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:5,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_boo_radar_red
execute if entity @s[scores={ForceRadar=1}] run playsound luigis_mansion:item.gameboy_horror.boo_radar player @s ~ ~ ~ 0.5
scoreboard players reset @s ForceRadar