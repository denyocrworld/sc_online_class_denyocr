# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-src"
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-build"
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix"
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix/tmp"
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix/src/nuget-populate-stamp"
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix/src"
  "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix/src/nuget-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix/src/nuget-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/FLUTTER_PROJECT/__sc_online_class_denyocr/batch_november/tutorial_responsive_sm_sl/build/windows/_deps/nuget-subbuild/nuget-populate-prefix/src/nuget-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
