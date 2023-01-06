tellraw @a ["",{"text":"Welcome","color":"red"},{"text":" to","color":"gold"},{"text":" Scatter","color":"yellow"},{"text":" Rewpawn","color":"green"},{"text":" Game","color":"blue"},{"text":"\nconfig\u672c\u3067\u8a2d\u5b9a\u3092\u3057\u3066\u3001\u30b2\u30fc\u30e0\u958b\u59cb\u30dc\u30bf\u30f3\u3092\u62bc\u3057\u3066\u304f\u3060\u3055\u3044\u3002\n\u672c\u306b\u3046\u307e\u304f\u53cd\u6620\u3055\u308c\u306a\u3044\u5834\u5408\u306f\u3001/function scatter_respawn:book_reload\u3092\u5b9f\u884c\u3057\u3066\u304f\u3060\u3055\u3044\u3002"}]
scoreboard objectives add sr_difficulty dummy
scoreboard objectives add sr_player dummy
forceload add 1024 1024 1024 1024
execute unless entity @e[tag=sr_MapCenter] run summon armor_stand 1024 0 1024 {NoGravity:true,Marker:true,Invisible:true,Tags:["sr_MapCenter"]}

function scatter_respawn:book_reload