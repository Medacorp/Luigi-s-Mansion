execute unless entity @s[scores={UpgradePlayer=5}] run function luigis_mansion:other/upgrade_path/player/v3.2
scoreboard players set @s UpgradePlayer 6
scoreboard players set @s Jukebox 0
advancement grant @s only luigis_mansion:jukebox/opening
advancement grant @s only luigis_mansion:jukebox/first_entrance