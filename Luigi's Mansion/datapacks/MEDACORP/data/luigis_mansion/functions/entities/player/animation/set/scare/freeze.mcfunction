execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute unless entity @s[scores={Animation=13..24}] unless entity @s[scores={Animation=27..41}] run effect give @s minecraft:slowness 1 9 true
execute unless entity @s[scores={Animation=13..24}] unless entity @s[scores={Animation=27..41}] run scoreboard players set @s IdleTime -101
execute unless entity @s[scores={Animation=13..24}] unless entity @s[scores={Animation=27..41}] run scoreboard players reset @s MaxHealthTime
execute unless entity @s[scores={Animation=13..24}] unless entity @s[scores={Animation=27..38}] if entity @s[scores={Animation=41}] run function luigis_mansion:entities/player/animations/set/scare/bash
execute unless entity @s[scores={Animation=13..24}] unless entity @s[scores={Animation=27..41}] run scoreboard players set @s Animation 40