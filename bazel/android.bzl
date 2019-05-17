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

load("//tools/build_defs/repo:maven.bzl", "MAVEN_SERVERS")
load(
    "//third_party/maven/android/support/constraint:constraint.bzl",
    "load_com_android_support_constraint_constraint_layout",
    "load_com_android_support_constraint_constraint_layout_solver",
)

def android_example_repositories(
        server_urls = MAVEN_SERVERS,
        fetch_sources = False):
    load_com_android_support_constraint_constraint_layout(server_urls)
    load_com_android_support_constraint_constraint_layout_solver(server_urls)
