arm PELION Device Shadow bridge for IBM Watson IoT                    

08/09/2021: updated bridge - better support for unified formatting of notifications/responses

08/08/2021: updated bridge - minor fixes and updates for AWS and Pelion

01/07/2021: updated bridge - minor fixes and dependency updates

08/31/2020: updated bridge - updated dependencies

02/29/2020: updated bridge - fixes for draft mode MQTT (token handling) 

02/29/2020: updated bridge - updated for treasuredata support. minor marshalling fixes

02/25/2020: updated bridge - updated internal dependencies. bridge updates (Watson)

02/24/2020: updated bridge - final fixes for draft mode mqtt formatting
  
02/24/2020: updated bridge - resync with dockerhub

01/22/2020: updated bridge - reverted broken jetty websocket dependency updates

01/17/2020: updated bridge - internal dependencies updated

11/11/2019: updated bridge - internal dependencies updated

10/31/2019: updated bridge - minor udpates and fixes

08/29/2019: updated bridge - minor fixes/enhancements

08/23/2019: updated bridge - minor update for mqtt

08/20/2019: updated bridge - added key Pelion device attribute retrieval prior to twin creation

08/13/2019: updated bridge - webhook fixes

08/12/2019: updated bridge - numerous bugfixes and initial websocket notification callback support

07/25/2019: updated bridge - additional fixes and updates

07/23/2019: updated bridge - PUT content type fixes, TypeDecoder and GC enhancements

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
