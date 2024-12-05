execute unless entity @s[scores={UpgradePlayer=4}] run function luigis_mansion:other/upgrade_path/player/v3.1
scoreboard players set @s UpgradePlayer 5
execute unless entity @s[scores={Room=-1}] run function luigis_mansion:room/underground_lab/warp_to

clear @s