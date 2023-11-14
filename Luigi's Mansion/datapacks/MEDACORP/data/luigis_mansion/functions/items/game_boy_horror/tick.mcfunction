execute if entity @a[limit=1,scores={GBHCall=1..}] unless entity @s[scores={ScareType=2..}] run function luigis_mansion:items/game_boy_horror/freeze_player

tag @s remove game_boy_horror_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}}] add game_boy_horror_selected
execute if entity @s[tag=game_boy_horror_selected] run function luigis_mansion:items/game_boy_horror/show_ghost_presence
execute if entity @s[scores={GBHCall=1..},tag=game_boy_horror_selected] run function luigis_mansion:items/game_boy_horror/answer
execute if entity @s[scores={GBHWait=1200}] run function luigis_mansion:items/game_boy_horror/answer
execute unless entity @s[scores={GBHCall=0..}] run scoreboard players set @s GBHCall 0
execute if entity @s[scores={GBHCall=1..,GBHWait=20}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.player.ringing_game_boy_horror"}]}
execute if entity @s[scores={GBHCall=1..,GBHWait=20..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={GBHCall=1..}] run function luigis_mansion:other/music/set/game_boy_horror_calling
scoreboard players add @s[scores={GBHCall=1..},tag=!game_boy_horror_selected] GBHWait 1

execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/change_screen

execute unless entity @s[scores={ForceRadar=1}] if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={ForceRadar=1},nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]},nbt=!{Inventory:[{tag:{Damage:5,luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red
execute if entity @s[scores={ForceRadar=1}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players reset @s ForceRadar
execute if entity @s[scores={UseItem=1..,KnockbackType=0},tag=game_boy_horror_selected,tag=!show_credits] unless entity @s[scores={ScareType=1..}] unless entity @s[scores={IdleTime=..-1},tag=!idle] run function luigis_mansion:selection_menu/game_boy_horror/original_menu
tellraw @s[scores={UseItem=1..},tag=game_boy_horror_selected,tag=show_credits] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.use_game_boy_horror_during_credits"}]}
scoreboard players set @s[scores={UseItem=1..},tag=game_boy_horror_selected] UseItem 0