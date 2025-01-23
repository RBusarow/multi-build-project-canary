pluginManagement {
  repositories {
    gradlePluginPortal()
    mavenCentral()
  }
  includeBuild("build-logic/conventions")
  includeBuild("build-logic/settings")
}

dependencyResolutionManagement {
  repositories {
    mavenCentral()
  }
}

include(":app")

rootProject.name = "multi-build-project-canary"
