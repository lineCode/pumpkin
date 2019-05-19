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
#
# Bazel command wrapper
BAZEL := "tools/bazel"

PLAT ?= linux
PLATS ?= linux osx
SLIENT ?= @

#ifneq ($(PLAT), none)

.PHONY: default

default:
	$(SLIENT) $(MAKE) $(PLAT)

#endif

none:
	$(SLIENT) echo "Please do 'make PLATFORM' where PLATFORM in one of these:"
	$(SLIENT) echo "	$(PLATS)"

$(BAZEL):
	$(SLIENT) chmod a+x $(BAZEL)

linux osx: $(BAZEL)
	$(SLIENT) $(BAZEL) build //...


clean: $(BAZEL)
	$(SLIENT) $(BAZEL) clean

cleanall: clean
	$(SLIENT) $(BAZEL) clean --expunge
	$(SLIENT) rm -rf bazel-*
	$(SLIENT) rm -rf .ijwb


