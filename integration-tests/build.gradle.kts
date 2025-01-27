plugins {
  kotlin("jvm") version "2.1.10"
}

val myProperty by project.properties
println("myProperty: $myProperty")

dependencies {
  testImplementation(kotlin("test-junit"))
}

