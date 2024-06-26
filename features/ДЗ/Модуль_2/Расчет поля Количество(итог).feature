﻿#language: ru

@tree

Функционал: Расчет поля Количество(итог)

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Расчет поля Количество(итог)
И Заполнение шапки документа Заказ
* Добавляем товар
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000005' | 'Тапочки'      |
И в таблице "Список" я выбираю текущую строку
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '900,00'
И я перехожу к следующему реквизиту
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Номер
    И я запоминаю значение поля "Номер" как "Номер"
* Проверка заполнения табличной части
	Тогда таблица "Товары" стала равной:
		| 'Товар'   | 'Цена'   | 'Количество' | 'Сумма'    |
		| 'Тапочки' | '900,00' | '3'          | '2 700,00' |

* Проверка  расчета Количества при изменении суммы (ошибка)
    И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
    И в таблице "Товары" в поле с именем 'ТоварыСумма' я ввожу текст '1 800,00'
    И я перехожу к следующему реквизиту
    И в таблице 'Товары' поле с именем  'ТоварыКоличество' имеет значение '2'

    