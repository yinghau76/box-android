# Android box

## Guides

* [Getting started with android and wercker - part 1](http://blog.wercker.com/2013/09/19/Gettingstarted-with-android-part-1.html)
* [Getting started with android and wercker - part 2](http://blog.wercker.com/2013/09/24/Gettingstarted-with-android-part-2.html)
* [Getting started with android and wercker - part 3](http://blog.wercker.com/2013/09/27/Gettingstarted-with-android-part-3.html)
* [Getting started with android and wercker - part 4](http://blog.wercker.com/2013/10/04/Getting-started-with-android-part-4.html)
* [Autoincrement versioning for android](http://blog.wercker.com/2013/10/11/auto-increment-versioning-for-android.html)

## android box

The `wercker/android` box runs on ubuntu 12.04 and provides a selection of the android toolchain:

* gradle 1.9
* android sdk version 22.2.1
* android build tools r17, 18.0.1 and 19
* android API r17 (version 4.2.2), 18 (android 4.3) and 19 (android 4.4)
* sys image 18, 19 (emulators)
* android support library

The box also inherits tools from a not yet official java box, resulting in the following additional tools:

* oracle java 7
* ant and ivy
* maven

A typical android application can use the following yaml:

``` yaml
box: wercker/android
# Build definition
build:
  # The steps that will be executed on build
  steps:
    - script:
        name: show base information
        code: |
          gradle -v
          echo $ANDROID_HOME
          echo $ANDROID_BUILD_TOOLS
          echo $ANDROID_UPDATE_FILTER
    # A step that executes `gradle build` command
    - script:
        name: run gradle
        code: |
          gradle --full-stacktrace -q --project-cache-dir=$WERCKER_CACHE_DIR build
```


There are a number of environment varaibles declared for your information:

* ANDROID_SDK_VERSION : version of the sdk
* ANDROID_BUILD_TOOLS : which versions of the build tools are installed.
* ANDROID_UPDATE_FILTER : shows all sdk elements which are installed

# What's new
* updated guides section


# License

The MIT License (MIT)

Copyright (c) 2013 wercker

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.19
* sys image 18

## 0.0.18
* sys image 19

## 0.0.17
* android sdk version bumped to 22.2.1
* build tools release 19 added (Android 4.4)

## 0.0.16
* switched to gradle 1.8

## 0.0.15
* $ added for environment variables in the default wercker.yml

## 0.0.14
* expanded readme.
* ANDROID_SDK_VERSION environment variable added

## 0.0.13
- initial release
