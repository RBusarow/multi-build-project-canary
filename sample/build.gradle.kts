plugins {
  kotlin("jvm") version "2.4.20"
}

val myProperty by project.properties
println("myProperty: $myProperty")

dependencies {
  testImplementation(kotlin("test-junit"))
}

