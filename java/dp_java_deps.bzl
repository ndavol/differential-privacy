""" Dependencies for java library. """

load("@rules_jvm_external//:defs.bzl", "maven_install")

def dp_java_deps():
    maven_install(
        # Run `REPIN=1 bazel run @unpinned_maven//:pin` after changing dependencies.
        artifacts = [
            # artifacts for building and testing
            "org.apache.commons:commons-math3:3.6.1",
            "com.google.auto.value:auto-value-annotations:1.10.1",
            "com.google.auto.value:auto-value:1.10.1",
            "com.google.code.findbugs:jsr305:3.0.2",
            "com.google.errorprone:error_prone_annotations:2.18.0",
            "com.google.guava:guava:31.1-jre",
            "com.google.protobuf:protobuf-java:3.22.2",
            # artifacts for testing only
            "org.mockito:mockito-core:4.11.0",
            "junit:junit:4.13.2",
            "com.google.truth:truth:1.1.3",
            "com.google.truth.extensions:truth-java8-extension:1.1.3",
            "com.google.testparameterinjector:test-parameter-injector:1.10",
        ],
        repositories = [
            "https://jcenter.bintray.com/",
            "https://maven.google.com",
            "https://repo1.maven.org/maven2",
        ],
        maven_install_json = "@com_google_java_differential_privacy//:maven_install.json",
    )
