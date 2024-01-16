-- Creating a schema snapshot for the unique key of the user and the data is his adres

{% snapshot address_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='customer_id',
          check_cols=['address'],
        )
    }}

    select * from raw.customer

{% endsnapshot %}