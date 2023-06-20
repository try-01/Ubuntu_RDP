#!/bin/bash
################################################################################
#                                                                              #
# Copyright (c) 2023 Díwash (Diwash0007)                                       #
#                                                                              #
# Licensed under the Apache License, Version 2.0 (the "License");              #
# you may not use this file except in compliance with the License.             #
# You may obtain a copy of the License at                                      #
#                                                                              #
#     http://www.apache.org/licenses/LICENSE-2.0                               #
#                                                                              #
# Unless required by applicable law or agreed to in writing, software          #
# distributed under the License is distributed on an "AS IS" BASIS,            #
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.     #
# See the License for the specific language governing permissions and          #
# limitations under the License.                                               #
#                                                                              #
################################################################################

display_sleeping_bot() {
    cat << "EOF"

                                        ________
                            _________  |____/  /
                __________ |_____/  /      /  /____
               |______/  /      /  /       \ /_____|
                     /  /      /  /______
  _______________   /  /       \ /_______|
 |               | /  /______
 | ____ | | ____ | \ /_______|
 |  (_) | | (_)  |
 |      |_|      |
 |     _____     |
 |_______________|
EOF
}

keep_alive() {
    local start_time=$(date +%s);
    local stop_time=$((start_time + 18000));
    while ((start_time < stop_time)); do
        display_sleeping_bot;
        sleep 180;
        start_time=$(date +%s)
    done
}

keep_alive;
