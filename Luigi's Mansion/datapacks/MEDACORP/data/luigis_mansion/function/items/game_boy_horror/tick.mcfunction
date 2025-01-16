tag @s remove game_boy_horror_selected
tag @s[tag=!poltergust_selected,nbt={data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}}}] add game_boy_horror_selected
execute if entity @a[tag=this_player,tag=game_boy_horror_menu,limit=1] run tag @s add game_boy_horror_selected

execute if entity @s[scores={ForceScreen=0}] if entity @s[nbt={data:{inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/change_screen
scoreboard players set @s ForceScreen 0
execute if entity @s[scores={ForceRadar=0}] if entity @s[nbt={data:{inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function #luigis_mansion:items/game_boy_horror/radar_type
execute if entity @s[scores={GBHRadar=40..}] unless score #freeze_timer Selected matches 1 as @a[tag=this_player,limit=1] at @s run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players set @s[scores={GBHRadar=40..}] GBHRadar 0
scoreboard players set @s ForceRadar 0

execute if entity @s[scores={UseItem=1..},tag=game_boy_horror_selected,tag=!disable_game_boy_horror] as @a[tag=this_player,limit=1] run function luigis_mansion:items/game_boy_horror/use_item
scoreboard players set @s[scores={UseItem=1..},tag=game_boy_horror_selected] UseItem 0