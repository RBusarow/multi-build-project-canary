#!/bin/zsh

set -e

for file in \
  "build-logic/conventions" \
  "build-logic/settings" \
  "poc/k2-merging" \
  "sample" \
  "integration-tests" \
  ; do
  # shellcheck disable=SC1090

  mkdir -p "./$file"
  mkdir -p "./$file/gradle"
  mkdir -p "./$file/gradle/wrapper"

  mkdir -p "./$file/src/test/kotlin/foo"

  echo \
"plugins {
  kotlin(\"jvm\") version \"2.0.21\"
}

dependencies {
  testImplementation(kotlin(\"test-junit\"))
}
" > "./$file/build.gradle.kts"

  echo \
"package foo

import kotlin.test.Test

class MyTest {
  @Test
  fun test() {
    println(\"Hello, World!\")
  }
}" > "./$file/src/test/kotlin/foo/MyTest.kt"


done

for file in \
  "build-logic/conventions" \
  "build-logic/settings" \
  "poc/k2-merging" \
  ; do
  # shellcheck disable=SC1090

  cd "./$file"
  ln -nfs ../../gradlew gradlew
  ln -nfs ../../gradlew.bat gradlew.bat
  ln -nfs ../../gradlew.properties gradlew.properties

  ln -nfs ../../../../gradle/wrapper/gradle-wrapper.properties gradle/wrapper/gradle-wrapper.properties
  ln -nfs ../../../../gradle/wrapper/gradle-wrapper.jar gradle/wrapper/gradle-wrapper.jar

  cd ../..
done

for file in \
  "sample" \
  "integration-tests" \
  ; do
  # shellcheck disable=SC1090

  cd "./$file"
  ln -nfs ../gradlew gradlew
  ln -nfs ../gradlew.bat gradlew.bat
  ln -nfs ../gradlew.properties gradlew.properties

  ln -nfs ../../../gradle/wrapper/gradle-wrapper.properties gradle/wrapper/gradle-wrapper.properties
  ln -nfs ../../../gradle/wrapper/gradle-wrapper.jar gradle/wrapper/gradle-wrapper.jar

  cd ..
done
