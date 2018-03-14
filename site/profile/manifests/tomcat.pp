class profile::tomcat (
  String $tomcat_version = '8.5.29',
) {
  $tomcat_major_version = split($tomcat_version, '[.]')[0] 
  
  tomcat::install { "/opt/tomcat/tomcat${tomcat_version}":
    source_url => "http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-${tomcat_major_version}/v${tomcat_version}/bin/apache-tomcat-${tomcat_version}.tar.gz"
  }
  tomcat::instance { 'current':
    catalina_home => "/opt/tomcat/tomcat${tomcat_version}",
  }
  
  
}
