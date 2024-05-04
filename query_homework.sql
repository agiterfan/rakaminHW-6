create table item_category(
	id_category serial not null,
	name_category varchar(255) not null,
	primary key (id_category)
);

create table item (
	id_item serial not null,
	name_item varchar(255) not null,
	price_item decimal (10,2) not null,
	stock_item int not null,
	id_category int,
	primary key (id_item),
	foreign key (id_category) references item_category(id_category)
);

select * from item order by id_item;
select * from item where id_item = 3;
insert into item_category(name_category) values ('Mainan anak');
insert into item_category(name_category) values ('Mainan mobil');
insert into item_category(name_category) values ('Mainan boneka');
insert into item(name_item, price_item, stock_item,id_category) 
values ('Mainan Robot', 150000.00, 20, 1);
insert into item(name_item, price_item, stock_item,id_category) 
values ('Hot wheels', 20000.00, 40, 2),('Barbie', 200000, 10, 3);
update item set stock_item = 15, price_item = 100000 where id_item = 3;
update item set name_item = 'Gundam' where id_item = 3;
update item_category set name_category = 'Mainan Gundam' where id_category = 1;
select * from item_category;

insert into item(name_item, price_item, stock_item) 
values ('Yoyo', 15000.00, 20);

select item.id_item, item.name_item, item.price_item, item.stock_item, item_category.name_category 
from item inner join item_category on item.id_category = item_category.id_category 
order by item.id_item;

select item.id_item, item.name_item, item.price_item, item.stock_item, item_category.name_category 
from item full join item_category on item.id_category = item_category.id_category 
order by item.id_item;