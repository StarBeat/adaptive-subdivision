set_project("adaptive_subdivision")

add_requires("glut")
add_requires("cgal 6.0.2")
add_requires("eigen")
add_requires("glad")

set_languages("c++17")

set_license("LGPL-3.0")


target("adaptive_subdivision")
    set_kind("binary")

    set_symbols("debug")
    add_packages("glut")
    add_packages("cgal")
    add_packages("eigen")

    add_includedirs("src/")
    add_files("src/*.cpp")
    if is_plat("windows") then
        add_defines("_USE_MATH_DEFINES")
        add_packages("glad")
        add_links("opengl32")
    end

target_end()

-- xmake g --proxy='http://127.0.0.1:1080'
-- xmake g --proxy='http://127.0.0.1:1080'