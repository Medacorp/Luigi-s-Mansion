scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0