scoreboard players set #strobulb Selected 1
function #luigis_mansion:items/flashlight/effects
scoreboard players reset #strobulb Selected
execute positioned ~ ~1.3 ~ run particle minecraft:flash ^ ^ ^2 0 0 0 0 1 force @a[tag=same_room]