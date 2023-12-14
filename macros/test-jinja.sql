{% set customer = {
    'id': 7,
    'name': 'Dhoni',
    'city': 'Ranchi'
} %}

The customer {{
customer.name
}}
having id 
{{
customer['id']
}}
lives in 
{{
customer.city   
}}
