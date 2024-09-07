execute unless entity @s[scores={UpgradePlayer=2}] run function luigis_mansion:other/upgrade_path/player/v3.0.1
scoreboard players set @s UpgradePlayer 3

# Move players back to lab, so all ghosts reset
scoreboard players reset @s WarpTime
data modify storage luigis_mansion:data selected_option set value {id:"exit"}
function luigis_mansion:selection_menu/tick
execute if entity @s[scores={Room=1..}] run function luigis_mansion:room/underground_lab/warp_to