scoreboard players set @s[scores={Invulnerable=1..2}] Invulnerable 0
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"poltergust_explosion"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
execute at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={OverheatMeter=300..}] if data storage e3_demo:data current_state.trophy{task_7:0b} run function e3_demo:selection_menu/gallery_trophy/complete/task_7
function e3_demo:items/poltergust_500/cool_down
playsound e3_demo:item.poltergust_500.explode player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.exploding_poltergust.high_health",medium:"luigis_mansion:entity.player.exploding_poltergust.high_health",low:"luigis_mansion:entity.player.exploding_poltergust.low_health",duration:40}
tag @s remove exploding_poltergust
tag @s add exploding_poltergust_effect