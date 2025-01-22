pluginManagement {
  repositories {
    gradlePluginPortal()
    mavenCentral()
  }
  includeBuild("../../build-logic/conventions")
  includeBuild("../../build-logic/settings")
}
dependencyResolutionManagement {
  repositories {
    mavenCentral()
  }
}
