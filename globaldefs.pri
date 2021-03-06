# Support debug and release builds from command line for CI
CONFIG += debug_and_release

# Ensure symbols are always generated
CONFIG += force_debug_info

# Disable asserts on release builds
CONFIG(release, debug|release) {
    DEFINES += NDEBUG
}

# Enable ASan for Linux or macOS
#CONFIG += sanitizer sanitize_address

# Enable ASan for Windows
#QMAKE_CFLAGS += /fsanitize=address /MD
#LIBS += clang_rt.asan_dynamic-i386.lib clang_rt.asan_dynamic_runtime_thunk-i386.lib
