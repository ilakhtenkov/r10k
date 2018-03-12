class profile::puppetdbserver (
    String $puppetdb_host = 'puppetdb.example.lan',
    String $postgres_host = 'postgres.example.lan'
) { 
    class { 'puppetdb': 
        manage_firewall => true,
        database_host => $postgres_host,
    }
    #class { 'puppetdb::server':
    #    database_host => $postgres_host,
    #} 
}
