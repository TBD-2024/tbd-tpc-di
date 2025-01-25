{% macro run_custom_sql_test(sql) %}
    {% set rendered_sql = sql %}
    {% set rendered_sql = render(rendered_sql) %}
    
    {% do log("Executing SQL: " ~ rendered_sql, info=True) %}
    
    {% set results = run_query(rendered_sql) %}
    
    {% do log("Query executed successfully. Rows affected: " ~ results.rowcount, info=True) %}
{% endmacro %}