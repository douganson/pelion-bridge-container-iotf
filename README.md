arm PELION Device Shadow bridge for IBM Watson IoT                    
  
10/05/2018: updated bridge - pagination support added for Pelion and initial scaling tests and fixes

10/03/2018: updated bridge and properties editor - general sync

10/02/2018: updated bridge - fixed shadow count accounting

10/01/2018: updated bridge - updated specific health stat updates

09/30/2018: updated properties-editor - update POST methods

09/30/2018: updated bridge - added JVM memory statistics

09/29/2018: updated bridge - fixes and updates 

09/28/2018: synced update

09/28/2018: updated bridge and properties-editor - fixes for VM installations 

09/27/2018: updated bridge - better support for non-MQTT peer interfaces

09/26/2018: synced update

09/20/2018: updated bridge - misc sync

09/19/2018: updated bridge - misc sync

09/17/2018: updated bridge - misc sync

09/14/2018: updated bridge - Google OBS and Null Pointer fixes

09/13/2018: synced update

09/10/2018: updated bridge - Watson IoT fixes

09/10/2018: resynced with templated add-on sample

09/09/2018: updated bridge - misc syncs 

09/06/2018: updated bridge - more cleanup and removal of older subscription management. Webhook reset finished. 

Container Bridge Instance Installation:

To install locally, have the latest Docker Engine (Toolkit for Windows users...) installed. Then, from within bash:

    bash% ./run-reload-bridge.sh

Then, proceed via browser to https://localhost:8234 to set your credentials and key material for the bridge

    username: admin
    pw: admin

If you have the ICE utililites from IBM installed, you can load this into Bluemix Containers as follows:

    bash% ./bluemix_build.sh
    bash% ./bluemix_run.sh

Each command above will show what options must be present to complete the build and run within Bluemix Containers.

Bridge source (Apache 2.0 licensed) is here: https://github.com/ARMmbed/pelion-bridge.git

Copyright 2017. ARM Ltd. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 
