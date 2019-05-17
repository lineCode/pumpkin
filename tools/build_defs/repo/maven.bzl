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

load("//tools/build_defs/repo:maybe.bzl", "maybe")
load("//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("//tools/build_defs/repo:android.bzl", "aar_maven_import_external")

MAVEN_SERVERS = [
    # Maven Central
    "http://central.maven.org/maven2",
    # Google Maven
    "https://maven.google.com",
]

def maven_jar_import(artifact_dict, server_urls = MAVEN_SERVERS, fetch_sources = False):
    maybe(
        jvm_maven_import_external,
        name = artifact_dict["name"],
        artifact = artifact_dict["artifact"],
        artifact_sha256 = artifact_dict["sha256"],
        server_urls = server_urls,
        fetch_sources = fetch_sources,
        licenses = ["notice"],
    )

def maven_aar_import(artifact_dict, server_urls, **kwargs):
    maybe(
        aar_maven_import_external,
        name = artifact_dict["name"],
        artifact = artifact_dict["artifact"],
        aar_sha256 = artifact_dict["sha256"],
        server_urls = server_urls,
        licenses = ["notice"],
        **kwargs
    )
