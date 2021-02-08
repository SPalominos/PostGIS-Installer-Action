@GrabConfig(systemClassLoader=true)
@Grab(group='org.postgresql', module='postgresql', version='42.2.18')
@Grab(group='org.codehaus.groovy', module='groovy-sql', version='3.0.7')

import groovy.sql.Sql

def url = 'jdbc:postgresql://localhost:5432/dflt_db'
def user = 'John'
def password = 'Doe'
def driver = 'org.postgresql.Driver'
def sql = Sql.newInstance(url, user, password, driver)

assert sql.firstRow("SELECT tablename FROM pg_tables WHERE schemaname='public' AND tablename='spatial_ref_sys'")

sql.close()
