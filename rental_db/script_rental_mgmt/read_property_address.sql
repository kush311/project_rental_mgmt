select * from home_rental.property_address pa ;

select 
	pa.street,
	pa.city,
	pa.state,
	pa.unit,
	pa.zip,
	pa.address_type_id,
	at2.label,
	at2.description
from 
	home_rental.property_address pa
	JOIN
	home_rental.address_type at2 
		ON pa.address_type_id=at2.id
		
		
		
		