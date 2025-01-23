plugins {
  kotlin("jvm") version "2.0.21"
}

val myProperty by project.properties
println("myProperty: $myProperty")

dependencies {
  testImplementation(kotlin("test-junit"))
}

