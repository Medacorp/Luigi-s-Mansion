scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] Sound 20
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.search.high_health",medium:"luigis_mansion:entity.player.search.high_health",low:"luigis_mansion:entity.player.search.low_health",duration:16}
execute if entity @s[scores={AnimationProgress=36}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.search.high_health",medium:"luigis_mansion:entity.player.search.high_health",low:"luigis_mansion:entity.player.search.low_health",duration:16}
execute if entity @s[scores={AnimationProgress=52}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.search.high_health",medium:"luigis_mansion:entity.player.search.high_health",low:"luigis_mansion:entity.player.search.low_health",duration:38}
execute if entity @s[scores={AnimationProgress=90}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.sigh.high_health",medium:"luigis_mansion:entity.player.sigh.high_health",low:"luigis_mansion:entity.player.sigh.low_health",duration:20}
# 20 turn valve high
# 36 turn valve high
# 52 turn valve very high
# 72 turn valve low
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=100}] remove reset_rotation
execute if entity @s[scores={AnimationProgress=100}] run function luigis_mansion:entities/luigi/animation/set/none