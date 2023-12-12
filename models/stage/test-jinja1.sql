{% set tools=['dbt','Snowflake','Databricks','Redshift','BigQuery'] %}

{% for tool in tools -%}
I do training on {{ tool }}
{%- if tool == 'BigQuery' %}
"That's it"
{% else %}
{{'and'}}
{% endif -%}
{% endfor %}

{#
{%- if tool == 'Redshift' %}
"That's it"
{% else %}
and
{% endif -%}
#}