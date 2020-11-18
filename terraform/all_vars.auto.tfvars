# General Networking
region                  = "us-east-1"
base_cidr_block         = "10.12.0.0/16"
subnet1_cidr_block      = "10.12.72.0/24"
subnet1_avail_zone      = "us-east-1a"
subnet2_cidr_block      = "10.12.40.0/24"
subnet2_avail_zone      = "us-east-1b"


# OMLApp EC2 instance
omlapp_ec2_size         = "t3.micro"
omlapp_ec2_zone         = "us-east-1a"



NIC                     ="eth0" #NET Interface to attach services
omnileads_release       ="release-1.11.0"  #OMniLeads release to deploy
TZ                      ="America/Argentina/Cordoba"  #Time Zone
sca                     ="1800" # Session cockie age

ami_user                ="omnileadsami"   #Asterisk AMI user
ami_password            ="5_MeO_DMT"  #Asterisk AMI pass

dialer_host             ="localhost" #Wombat dialer location
dialer_user             ="demoadmin"
dialer_password         ="demo"
mysql_host              ="localhost" #DB for wombat dialer

rtpengine_host          ="10.10.10.10"   #RTPengine location

# OMniLeads App PGSQL parameters
pg_database             ="omnileads"
pg_username             ="omnileads"
pg_password             ="my_very_strong_pass"
# private host addr and default password of your digitalocean pgsql cluster
#pg_host=""
#pg_default_password=""
# digitalocean default pgsql cluster parameters
#pg_port="25060"
#pg_default_database="defaultdb"
#pg_default_user="doadmin"
