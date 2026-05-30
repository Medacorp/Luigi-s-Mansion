execute unless entity @s[scores={UpgradePlayer=7}] run function luigis_mansion:other/upgrade_path/player/v3.4
scoreboard players set @s UpgradePlayer 8
execute unless entity @s[scores={Room=-1}] run function luigis_mansion:room/underground_lab/warp_to