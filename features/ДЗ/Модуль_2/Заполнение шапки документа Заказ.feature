﻿#language: ru
@ExportScenarios


Функционал: Заполнение шапки документа Заказ

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки документа Заказ
* Открываем список Заказов, создаем новый 
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		Тогда открылось окно 'Заказы товаров'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ (создание)'
* Заоплняем реквизиты шапки 
		И я нажимаю кнопку выбора у поля с именем "Дата"
		И в поле с именем 'Дата' я ввожу текст '24.04.2024  0:00:00'
		И я перехожу к следующему реквизиту
		И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
		И я перехожу к следующему реквизиту
		И я нажимаю кнопку выбора у поля с именем "Покупатель"
		Тогда открылось окно 'Контрагенты'
			И в таблице "Список" я перехожу к строке:
				| 'Код'       | 'Наименование'    |
				| '000000015' | 'Магазин "Обувь"' |
		И в таблице "Список" я выбираю текущую строку
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
		И я перехожу к следующему реквизиту
		И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'

