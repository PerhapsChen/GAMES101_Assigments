add_rules("mode.debug", "mode.release")

add_requires("eigen 3.3.7")
set_languages("c++17")
target("HW0")
    set_kind("binary")
    add_files("*.cpp")
    add_packages("eigen")