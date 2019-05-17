# Copyright 2019 Yan Shen (aka 石头), all rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load(
    "//tools/build_defs/repo:maven.bzl",
    "maven_aar_import",
    "maven_jar_import",
)

CONSTRAINT_LAYOUT = {
    "name": "com_android_support_constraint_constraint_layout",
    "artifact": "com.android.support.constraint:constraint-layout:1.1.3",
    "sha256": "27b4e5c0b80d3ff8b92f4c93b3b4d3ecf16c01589f4cdf70ca7cf64cb42d8122",
}

CONSTRAINT_LAYOUT_SOLVER = {
    "name": "com_android_support_constraint_constraint_layout_solver",
    "artifact": "com.android.support.constraint:constraint-layout-solver:1.1.3",
    "sha256": "2cafbe356f71c208013d021f32943904798cd6459e5107f9fe27000eb5bc2aef",
}

def load_com_android_support_constraint_constraint_layout(server_urls):
    maven_aar_import(CONSTRAINT_LAYOUT, server_urls, deps = [
        "@com_android_support_constraint_constraint_layout_solver//jar",
    ])

def load_com_android_support_constraint_constraint_layout_solver(server_urls):
    maven_jar_import(CONSTRAINT_LAYOUT_SOLVER, server_urls)
