
alter table address_type
modify id INT auto_increment,
add primary key (id);


describe address_type;

alter table unit_type
modify id INT auto_increment,
add primary key (id); 

describe unit_type;

show tables;


alter table property add column property_type varchar(250);

describe property;


alter table property add constraint property_type_fk foreign key (property_type) references property_type (id);


show columns from property_type;

show columns from property;


alter table property modify property_type int;

ALTER TABLE property
ADD CONSTRAINT property_type_fk
FOREIGN KEY (property_type)
REFERENCES property_type(id);


describe property_type;

insert into property_type (label, description) values 
('Apartment', 'A residential unit in a building with multiple units'),
('Townhouse', 'A multi-floor home sharing one or two walls with adjacent properties'),
('Condo', 'Individually owned units in a building with shared amenities'),
('Single-Family Home', 'A detached residential building intended for one family');



select * from property_type;

update property_type set label = 'Loft', description = 'An open-concept unit with minimal interior walls, often in converted industrial buildings'
where label = 'Single-Family Home'

select * from property_type;


UPDATE property SET property_type = 4 WHERE property_pk BETWEEN 16 AND 20;


select * from property_type;

UPDATE property SET property_type = 1 WHERE property_pk BETWEEN 1 AND 5;
select * from property;

UPDATE property SET property_type = 3 WHERE property_pk BETWEEN 11 AND 15;

select * from property;

UPDATE property SET property_type = 2 WHERE property_pk BETWEEN 6 AND 10;

select * from property;





alter table property_address add column address_type_id int;

select * from property_address;



insert into address_type (label, description) values
('Physical', 'The physical location of the property'),
('Mailing', 'This is the address where mail/packages are delivered');

select * from address_type;


update property_address
set address_type_id = 1
where address_type = 'physical';


alter table property_address drop column address_type;

select * from property_address;


ALTER TABLE property_address
ADD CONSTRAINT address_type_fk
FOREIGN KEY (address_type_id)
REFERENCES address_type(id);

select * from property_address;

UPDATE property_address
SET address_type_id = 2
WHERE address_pk % 2 = 0;


select * from property_address;


select * from property_units;

select * from unit_type;

alter table property_units add column units_type_id INT; 

select * from property_units; 


INSERT INTO unit_type (label, description) VALUES
('Studio', 'A small single-room apartment'),
('1 Bed', 'A one-bedroom apartment'),
('2 Bed', 'A two-bedroom apartment');

select * from unit_type; 

update property_units set units_type_id = case unit_type when 'Studio' then 1 when '1 Bed' then 2 when '2 Bed' then 3 end; 

select * from property_units;

ALTER TABLE property_units
ADD CONSTRAINT fk_unit_type
FOREIGN KEY (units_type_id) REFERENCES unit_type(id);

ALTER TABLE property_units DROP COLUMN unit_type;

select * from property_units; 

select * from unit_type;



select * from home_rental.property p 

select
p.name, 



