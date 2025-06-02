 SELECT * FROM home_rental.property p;
SELECT * FROM home_rental.property p WHERE p.property_pk=1;

select * from home_rental.property_address pa where pa.property_fk=1;

select
	p.name,
 	p.management_company,
 	pa.address_type,
 	pa.city,
 	pa.state,
 	pu.unit_type,
 	pu.unit_number
 from
 	property p,
 	property_address pa,
 	property_units pu 
 WHERE 
 	p.property_pk=1
 	AND
 	p.property_pk=pa.property_fk
 	and
 	p.property_pk=pu.property_fk
 ;



 SELECT * FROM home_rental.property_units WHERE property_fk = 1; gets the total rent for property 1
 select
 	p.name,
 	p.management_company,
 	sum(pu.rent) as total_rent,
 	AVG(pu.rent) as avg_rent
 from
 	home_rental.property p
 	JOIN
 	home_rental.property_units pu
 		ON p.property_pk=pu.property_fk
 where
 	p.property_pk IN (1,2,3,4)
 group by
 	1,2
 ;

 Select
 *
 from 
 home_rental.property_units 
 where 
 pets_allowed = 1
 ;

select 
 * 
 from 
 home_rental.property_units
 where rent < 1200;


 select 
 	p.name,
 	pu.unit_type,
 	pu.rent,
 	pa.city
 from
 	home_rental.property_units pu 
 join 
 	home_rental.property_address pa on pa.property_fk = pu.units_pk
 join
 	home_rental.property p on p.property_pk = pu.property_fk
 where
 	pa.city = "Tempe" and pa.address_type = "mailing"
 ;






	
	