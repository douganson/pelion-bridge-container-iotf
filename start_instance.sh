#!/bin/bash

update_hosts()
{
    sudo /home/arm/update_hosts.sh
    rm /home/arm/update_hosts.sh
}

run_supervisord()
{
   /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf 2>&1 1>/tmp/supervisord.log
}

run_pelion_bridge()
{
   cd /home/arm
   su -l arm -s /bin/bash -c "/home/arm/restart.sh &"
}

run_properties_editor()
{
  cd /home/arm/properties-editor
  su -l arm -s /bin/bash -c "/home/arm/properties-editor/runPropertiesEditor.sh 2>&1 1> /tmp/properties-editor.log &"
}

enable_long_polling() {
   LONG_POLL="$2"
   if [ "${LONG_POLL}" = "use-long-polling" ]; then
        DIR="pelion-bridge/conf"
        FILE="service.properties"
        cd /home/arm
        sed -e "s/mds_enable_long_poll=false/mds_enable_long_poll=true/g" ${DIR}/${FILE} 2>&1 1> ${DIR}/${FILE}.new
        mv ${DIR}/${FILE} ${DIR}/${FILE}.poll
        mv ${DIR}/${FILE}.new ${DIR}/${FILE}
        chown arm.arm ${DIR}/${FILE}
   fi
}

set_mdc_api_token() {
   API_TOKEN="$2"
   if [ "$2" = "use-long-polling" ]; then
        API_TOKEN="$3"
   fi
   if [ "${API_TOKEN}X" != "X" ]; then
        DIR="pelion-bridge/conf"
        FILE="service.properties"
        cd /home/arm
        sed -e "s/mbed_pelion_api_token_goes_here/${API_TOKEN}/g" ${DIR}/${FILE} 2>&1 1> ${DIR}/${FILE}.new
        mv ${DIR}/${FILE} ${DIR}/${FILE}.mdc_api_token
        mv ${DIR}/${FILE}.new ${DIR}/${FILE}
        chown arm.arm ${DIR}/${FILE}
   fi
}

set_watson_api_key() {
   API_KEY="$3"
   if [ "$2" = "use-long-polling" ]; then
        API_KEY="$4"
   fi
   if [ "${API_KEY}X" != "X" ]; then
        DIR="pelion-bridge/conf"
        FILE="service.properties"
        cd /home/arm
        sed -e "s/a-__ORG_ID__-__ORG_KEY__/${API_KEY}/g" ${DIR}/${FILE} 2>&1 1> ${DIR}/${FILE}.new
        mv ${DIR}/${FILE} ${DIR}/${FILE}.watson_api_key
        mv ${DIR}/${FILE}.new ${DIR}/${FILE}
        chown arm.arm ${DIR}/${FILE}
   fi
}

set_watson_auth_token() {
   API_TOKEN="$4"
   if [ "$2" = "use-long-polling" ]; then
        API_TOKEN="$5"
   fi
   if [ "${API_TOKEN}X" != "X" ]; then
        DIR="pelion-bridge/conf"
        FILE="service.properties"
        cd /home/arm
        sed -e "s/iotf_authentication_token_goes_here/${API_TOKEN}/g" ${DIR}/${FILE} 2>&1 1> ${DIR}/${FILE}.new
        mv ${DIR}/${FILE} ${DIR}/${FILE}.watson_auth_token
        mv ${DIR}/${FILE}.new ${DIR}/${FILE}
        chown arm.arm ${DIR}/${FILE}
   fi
}

set_perms() {
  cd /home/arm
  chown -R arm.arm .
}

main() 
{
   update_hosts
   enable_long_polling $*
   set_mdc_api_token $*
   set_watson_api_key $*
   set_watson_auth_token $*
   set_perms $*
   run_properties_editor
   run_pelion_bridge
   run_supervisord
}

main $*
