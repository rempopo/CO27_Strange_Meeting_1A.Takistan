//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

if (side player == west ) then {

TOPIC("I. Обстановка:")
"Конвой Афганской Национальной Армии (ANA) выдвинулся с базы Jilavur и должен был прибыть Loy Manara около получаса назад. После прохождения н.п. Feruz Abad связь с конвоем была потеряна. Также к нам поступила информация, что к востоку от Darbang Pass были развёрнуты миномёты боевиков. Связаны ли эти два события, мы пока не знаем. Ясно одно: нужно как можно быстрее найти конвой и вернуть солдат ANA на базу в Loy Manara"
END

TOPIC("А. Враждебные силы:")
"Боевики Талибана, местное ополчение
<br />Миномёты в районе Darbang Pass"
END

TOPIC("Б. Дружественные силы:")
"Взвод армии США"
END

TOPIC("II. Задание:")
"1. Найти конвой ANA
<br />2. Уничтожить миномёты
<br />"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"2 UH-60
<br />1 CH-47"
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

} else {

TOPIC("I. Обстановка:")
"Мы попали в засаду талибана! Всё шло хорошо до тех пор, пока не подорвали наших братьев в первой машине. К счастью, Аллах смилостивился над первым отделением и мы смогли укрыться в каком-то кишлаке у дороги. Вокруг свистят пули и снаряды, а злые талибы бегут убивать нас. Мы будем сражаться до тех пор, пока американцы не прилетят и не заберут нас отсюда домой. В ином случае, мы сдадимся."
END

TOPIC("А. Враждебные силы:")
"Боевики Талибана, местное ополчение
<br />"
END

TOPIC("Б. Дружественные силы:")
"Американцы"
END

TOPIC("II. Задание:")
"Дождаться американцев или сдаться в плен
<br />"
END

TOPIC("III. Выполнение:")
"Действуйте по ситуации и ждите спасения"
END

TOPIC("IV. Поддержка:")
"Техника разбитой колонны на дороге"
END

TOPIC("V. Сигналы:")
"1'1 - SR CH 1
<br />"
END

TOPIC("VI. Замечания:")
"Наша рация оказалась выведенной из строя шальной пулей. Попробуйте найти другую в машинах колонны."
END
};
ADD_TOPICS