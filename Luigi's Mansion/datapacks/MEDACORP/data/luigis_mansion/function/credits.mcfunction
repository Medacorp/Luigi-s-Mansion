scoreboard players add @s CreditsTime 1
title @s[scores={CreditsTime=1}] times 10 70 20
title @s[scores={CreditsTime=1}] title {type:"translatable",translate:"luigis_mansion:credits.map",color:"#598DC9"}
title @s[scores={CreditsTime=100}] subtitle {type:"text",text:"Dhranios",color:"#598DC9"}
title @s[scores={CreditsTime=100}] title {type:"translatable",translate:"luigis_mansion:credits.project_lead",color:"#598DC9"}
title @s[scores={CreditsTime=200}] subtitle {type:"text",text:"Laser Crusader (Skydier)",color:"#598DC9"}
title @s[scores={CreditsTime=200}] title {type:"translatable",translate:"luigis_mansion:credits.research_and_ripping",color:"#598DC9"}
title @s[scores={CreditsTime=300}] subtitle {type:"text",text:"Dhranios",color:"#598DC9"}
title @s[scores={CreditsTime=300}] title {type:"translatable",translate:"luigis_mansion:credits.functionality_and_models",color:"#598DC9"}
title @s[scores={CreditsTime=400}] subtitle {type:"text",text:"Supersleiny",color:"#598DC9"}
title @s[scores={CreditsTime=400}] title {type:"translatable",translate:"luigis_mansion:credits.trailer_creation",color:"#598DC9"}
title @s[scores={CreditsTime=500}] subtitle {type:"text",text:"Danish_Pirate, Feras_MQ, UltimateGold",color:"#598DC9"}
title @s[scores={CreditsTime=500}] title {type:"translatable",translate:"luigis_mansion:credits.beta_testing",color:"#598DC9"}
title @s[scores={CreditsTime=600}] subtitle {type:"text",text:"Medacorp",color:"#598DC9"}
title @s[scores={CreditsTime=600}] title {type:"translatable",translate:"luigis_mansion:credits.team",color:"#598DC9"}

title @s[scores={CreditsTime=700}] title {type:"translatable",translate:"luigis_mansion:credits.links",color:"#598DC9"}
title @s[scores={CreditsTime=800}] subtitle {type:"translatable",translate:"luigis_mansion:credits.discord.description",color:"#598DC9"}
title @s[scores={CreditsTime=800}] title {type:"translatable",translate:"luigis_mansion:credits.discord",color:"#598DC9"}
tellraw @s[scores={CreditsTime=800}] {type:"translatable",translate:"luigis_mansion:credits.discord.chat",click_event:{action:"open_url",url:"https://discord.gg/Nn6wScEc88"},color:"green"}
title @s[scores={CreditsTime=900}] subtitle {type:"translatable",translate:"luigis_mansion:credits.patreon.description",color:"#598DC9"}
title @s[scores={CreditsTime=900}] title {type:"translatable",translate:"luigis_mansion:credits.patreon",color:"#598DC9"}
tellraw @s[scores={CreditsTime=900}] {type:"translatable",translate:"luigis_mansion:credits.patreon.chat",click_event:{action:"open_url",url:"https://www.patreon.com/dhranios"},color:"green"}
title @s[scores={CreditsTime=1000}] subtitle {type:"translatable",translate:"luigis_mansion:credits.github.description",color:"#598DC9"}
title @s[scores={CreditsTime=1000}] title {type:"translatable",translate:"luigis_mansion:credits.github",color:"#598DC9"}
tellraw @s[scores={CreditsTime=1000}] {type:"translatable",translate:"luigis_mansion:credits.github.chat",click_event:{action:"open_url",url:"https://github.com/Medacorp/Luigi-s-Mansion"},color:"green"}
title @s[scores={CreditsTime=1100}] subtitle {type:"translatable",translate:"luigis_mansion:credits.crowdin.description",color:"#598DC9"}
title @s[scores={CreditsTime=1100}] title {type:"translatable",translate:"luigis_mansion:credits.crowdin",color:"#598DC9"}
tellraw @s[scores={CreditsTime=1100}] {type:"translatable",translate:"luigis_mansion:credits.crowdin.chat",click_event:{action:"open_url",url:"https://crowdin.com/project/medacorp-projects"},color:"green"}
title @s[scores={CreditsTime=1200},tag=!looking_at_map] times 40 40 40
title @s[scores={CreditsTime=1200},tag=looking_at_map] times 0 40 40
tag @s[scores={CreditsTime=1200}] remove show_credits
scoreboard players set @s[scores={CreditsTime=1200}] CreditsTime 0