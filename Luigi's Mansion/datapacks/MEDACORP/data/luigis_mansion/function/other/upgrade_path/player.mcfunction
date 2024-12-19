scoreboard players operation #temp UpgradePlayer = @s UpgradePlayer
scoreboard players add #temp UpgradePlayer 0
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/readd_inventory
function luigis_mansion:other/upgrade_path/player/v3.3
scoreboard players reset #temp UpgradePlayer