arm PELION Device Shadow bridge for IBM Watson IoT                    
  
10/31/2019: updated bridge - minor udpates and fixes

08/29/2019: updated bridge - minor fixes/enhancements

08/23/2019: updated bridge - minor update for mqtt

08/20/2019: updated bridge - added key Pelion device attribute retrieval prior to twin creation

08/13/2019: updated bridge - webhook fixes

08/12/2019: updated bridge - numerous bugfixes and initial websocket notification callback support

07/25/2019: updated bridge - additional fixes and updates

07/23/2019: updated bridge - PUT content type fixes, TypeDecoder and GC enhancements

07/16/2019: updated bridge - multi-console WS fixes

06/27/2019: updated preferences editor

06/26/2019: updated bridge - more tweaking of WS logger tunables

06/24/2019: updated bridge - tweaked WS logger tunables...

06/21/2019: updated bridge and properties editor - dependency lib updates

06/19/2019: updated properties editor

06/18/2019: updated bridge - added short pause to long polling to prevent runaway polling...

04/17/2019: updated bridge - updated dependency components

04/12/2019: Google CloudIoT fixes, updated GoogleCloudIoT APIs

03/07/2019: refresh builds

01/05/2019: docker build trigger update

01/04/2019: Happy New Year! minor update to mbed-properties-editor

11/26/2018: updated bridge - removed outdated scripts - no longer needed

11/07/2018: updated bridge - new Google CloudIoT HTTP-based implementation (optional) in leu of MQTT

11/04/2018: updated bridge - reoganized for future AWS and Google HTTP implementations

11/03/2018: updated bridge - new IoTHub HTTP-based implementation (optional) in leu of MQTT

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
