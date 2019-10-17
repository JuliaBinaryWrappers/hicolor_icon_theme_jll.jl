# Autogenerated wrapper script for hicolor_icon_theme_jll for x86_64-unknown-freebsd11.1
export hicolor_icon_theme

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `hicolor_icon_theme`
const hicolor_icon_theme_splitpath = ["share", "icons", "hicolor", "index.theme"]

# This will be filled out by __init__() for all products, as it must be done at runtime
hicolor_icon_theme_path = ""

# hicolor_icon_theme-specific global declaration
# This will be filled out by __init__()
hicolor_icon_theme = ""


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global hicolor_icon_theme_path = abspath(joinpath(artifact"hicolor_icon_theme", hicolor_icon_theme_splitpath...))

    global hicolor_icon_theme = hicolor_icon_theme_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

