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
execute if entity @s[scores={GBHCall=1..}] unless entity @s[scores={MusicType=2..5}] unless entity @s[scores={MusicType=22}] unless entity @s[scores={MusicType=24}] unless entity @s[scores={MusicType=38}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27}] run function luigis_mansion:other/music/set/gameboy_horror_calling
scoreboard players add @s[scores={GBHCall=1..},tag=!gameboy_horror_selected] GBHWait 1

attribute @s[tag=scanning] minecraft:generic.movement_speed base set 0
attribute @s[tag=gameboy_horror_selected,scores={GBHCall=1..}] minecraft:generic.movement_speed base set 0
execute unless entity @s[tag=gameboy_horror_selected,scores={GBHCall=1..}] run attribute @s[tag=!scanning] minecraft:generic.movement_speed base set 0.10000000149011612

scoreboard players operation #temp Room = @s Room
execute as @e[tag=hidden_boo] if score @s Room = #temp Room run tag @s add this_room_boo
execute as @e[tag=boo,tag=!dark_room,tag=!cutscene,tag=ghost] if score @s Room = #temp Room run tag @s add this_room_boo
scoreboard players reset #temp Room
execute if entity @e[tag=this_room_boo,limit=1] positioned ~ ~0.5 ~ run function luigis_mansion:items/gameboy_horror/boo_radar

execute unless entity @a[scores={GBHCall=1..,Dialog=1..}] if entity @s[tag=!scanning,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:1,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_screen_off
execute unless entity @a[scores={GBHCall=1..,Dialog=1..}] if entity @s[tag=scanning,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:3,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_screen_to_scan
execute if entity @a[scores={GBHCall=1..,Dialog=1..}] if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:2,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_screen_to_call
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{CustomModelData:2,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_boo_radar_off
execute unless entity @e[tag=this_room_boo,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]},nbt=!{Inventory:[{tag:{CustomModelData:3,luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}]}] run function luigis_mansion:items/gameboy_horror/turn_boo_radar_on

tag @e[tag=hidden_boo] remove this_room_boo
tag @e[tag=boo,tag=ghost] remove this_room_boo
tag @s remove already_radared