## Mermaid
 
**Mermaid** - это сильно упрощённый и далёкий аналог **UML** - специальный язык описани блок-схем, графиков и диаграмм с их визуализацией.
 
> **Самсостоятельно доделать это ридми**
 
### Блок схемы
```mermaid
flowchart LR
    A[Начало] --> B(Шаг 1) --> C{Решение}
    C -- Да --> D[Конец]
    C -- Нет --> B
```
 
#### Базовая структура 1
```mermaid
flowchart LR
    A[Вопрос: Как сделать список?] --> B["Ответ: `-` или `*`"]
    A --> C["Пример: \n - Пункт 1 \n"]
```
 
Виды Mermaid-диограмм
- Блок-схемы - 'graph', 'flowchart'
- Последовательности - 'sequenceDiagram'
- Классы - 'classDiagram'
- Диаграмма Ганта - 'gant'
- Круговые - 'pie'
- Состояние - 'stateDiagram'
- ER-диаграммы -'Entity-RelationshipDiagram'
- Графы зависимостей
 
#### Базовая структура 2
```mermaid
flowchart TB
    %% Определение узлов с разными формами
    StartNode((Начало процесса)) --> Process1[Обычный шаг]
    Process1 --> Condition{"Условие выбора<br>(Ромб)"}
   
    %% Ветвление и разные стили линий
    Condition -- "Вариант А" --> Process2>Асимметричный узел]
    Condition -- "Вариант Б" ==> Process3[(База Данных)]
   
    %% Двунаправленная связь и круглый узел
    Process2 <--> Process4((Внутренний<br>цикл))
   
    %% Объединение потоков
    Process3 --> EndNodeNode([Конец процесса])
    Process4 --> EndNodeNode
   
    %% Кастомная стилизация узлов (CSS-стили)
    style StartNode fill:#4CAF50,stroke:#2E7D32,stroke-width:2px,color:#000
    style EndNodeNode fill:#F44336,stroke:#C62828,stroke-width:2px,color:#000
    style Condition fill:#FFEB3B,stroke:#FBC02D,stroke-width:2px
   
    %% Добавление интерактивности (ссылка на узел)
    click Process3 "https://js.org" "Перейти к документации Mermaid"
```
 
 
#### Полный синтаксис блок-схем
 
```mermaid
flowchart TD
    A --> B
```
 
```mermaid
graph TD
    A --> B
```
 
### Диаграмма последовательности
 
```mermaid
sequenceDiagram
    participant П as Пользователь
    participant С as Сервер
    participant Б as База данных
 
    П->>С: Запрос данных
    activate С
    С->>Б: SELECT * FROM users
    activate Б
    Б-->>С: Результат
    deactivate Б
    С-->>П: JSON-ответ
    deactivate С
```
 
### Диаграмма класса
 
```mermaid
classDiagram
    class Animal {
        +String name
        +int age
        +makeSound() void
    }
 
    class Dog {
        +String breed
        +fetch() void
    }
 
    class Cat {
        +bool indoor
        +scratch() void
    }
 
    Animal <|-- Dog
    Animal <|-- Cat
```
 
### Диаграмма Ганта
 
```mermaid
gantt
    title План разработки проекта
    dateFormat  YYYY-MM-DD
    section Проектирование
    Сбор требований      :a1, 2026-01-01, 7d
    Дизайн                :a2, after a1, 5d
    section Разработка
    Backend               :b1, after a2, 14d
    Frontend              :b2, after a2, 14d
    section Тестирование
    QA                    :c1, after b1, 7d
```
 
### Граф зависимостей
 
```mermaid
flowchart LR
    A[module_a] --> B[module_b]
    A --> C[module_c]
    B --> D[module_d]
    C --> D
```
 
### Диаграмма состояний
 
```mermaid
stateDiagram-v2
    [*] --> Черновик
    Черновик --> На_проверке: Отправить
    На_проверке --> Опубликовано: Одобрить
    На_проверке --> Черновик: Вернуть
    Опубликовано --> [*]
```
 
### Юзер-джайрни
 
```mermaid
journey
    title Путь пользователя: Покупка товара в интернет-магазине
    section Поиск и выбор
      Поиск товара на сайте: 5: Юзер
      Сравнение характеристик: 3: Юзер, Система
      Чтение отзывов: 4: Юзер
    section Оформление
      Добавление в корзину: 5: Юзер
      Авторизация / Регистрация: 2: Юзер, Система: Сложная форма ввода
      Ввод адреса доставки: 3: Юзер
      Выбор способа оплаты: 4: Юзер
    section Оплата и Ожидание
      Оплата картой: 5: Юзер, Банк
      Получение SMS-подтверждения: 4: Система
      Ожидание доставки: 2: Юзер: Нет трек-номера
    section Получение
      Курьер привез заказ вовремя: 5: Юзер, Курьер
      Проверка и распаковка: 5: Юзер
```
 
### Кастомизация стилей
 
```mermaid
---
config:
  theme: dark
---
flowchart LR
    A --> B
```
 
```mermaid
---
config:
  theme: forest
---
flowchart LR
    A --> B
```
 
```mermaid
---
config:
  theme: neutral
---
flowchart LR
    A --> B
```
 
#### Классы CSS
 
```mermaid
flowchart LR
    A[Старт]:::startNode
    B[Обычный]
    classDef startNode fill:#dcfce7,stroke:#16a34a,color:#14532d,stroke-width:2px
```
 
#### Интерактивность
 
```mermaid
flowchart LR
    A[Обычный шаг] --> B((Кликни меня!))
   
    %% Делаем узел B ссылкой (Откроется в новой вкладке)
    click B "Перейти к документации" _blank
```
 
### Круговая диаграмма
 
```mermaid
pie
    title ОС на десктопе
   "Windows" : 70
   "MacOS" : 20
   "Linux" : 7
   "Other" : 3
```