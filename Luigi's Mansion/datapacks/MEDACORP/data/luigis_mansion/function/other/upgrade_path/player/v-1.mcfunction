execute unless entity @s[scores={UpgradePlayer=-1}] run function luigis_mansion:other/upgrade_path/player/v-1
scoreboard players set @s UpgradePlayer -1
attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:gravity base set 0