execute unless entity @s[scores={UpgradePlayer=1}] run function luigis_mansion:other/upgrade_path/player/v3.0
scoreboard players set @s UpgradePlayer 2
tag @s add pause_dialog