import snowflake.snowpark.functions as sf

def model(dbt,session):

    dbt.config(materialized="table")
    tdf = dbt.source("src", "nations")
    # tdf = dbt.ref("nations")
    df = tdf.groupBy('n_regionkey').agg( sf.count(sf.col('n_nationkey')).alias('TotalNations')) 
    df1 = df.rename(sf.col('N_REGIONKEY'),'Regions')
    return df1