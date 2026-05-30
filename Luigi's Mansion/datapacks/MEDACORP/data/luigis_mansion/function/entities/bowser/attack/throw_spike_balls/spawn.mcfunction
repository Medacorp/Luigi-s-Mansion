data modify entity @s data.loot set from entity @s data.loot_storage.ball_attack
data modify entity @s[tag=fast_spike_balls] data.loot set from entity @s data.loot_storage.fast_ball_attack
execute if data entity @s data.loot run data modify entity @s data.loot.contents[].variables.owner set from entity @s UUID
execute if data entity @s data.loot run function luigis_mansion:other/drop_loot