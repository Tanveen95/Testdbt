{% macro dollar_to_euro (colm,deci) %}
round({{colm}} * {{ var('euro')}},{{deci}})
{% endmacro %}

{% macro dollar_to_inr (colm,deci) %}
round({{colm}} * {{ var('inr')}},{{deci}})
{% endmacro %}

{% macro money() -%}
::decimal(16,4)
{%- endmacro %}