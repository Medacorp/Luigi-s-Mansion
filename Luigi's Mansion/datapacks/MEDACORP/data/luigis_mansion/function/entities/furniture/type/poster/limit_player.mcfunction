function luigis_mansion:entities/furniture/type/poster/target
scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp EntityYOffset = @s EntityYOffset
scoreboard players operation #temp EntityYOffset /= #2 Constants
scoreboard players operation #temp PositionY -= #temp EntityYOffset
scoreboard players reset #temp EntityYOffset
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
tag @s add vacuuming_poster
$execute at @s[scores={TeleportDelayTimer=0}] facing $(facing_x) $(facing_y) $(facing_z) run function luigis_mansion:entities/furniture/type/poster/teleport with storage luigis_mansion:data macro