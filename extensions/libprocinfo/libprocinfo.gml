#define env_from_pid
if (os_type == os_windows) {
  return external_call(external_define("libprocinfo.dll", "env_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
} else if (os_type == os_macosx) {
  return external_call(external_define("libprocinfo.dylib", "env_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
} else {
  return external_call(external_define("libprocinfo.so", "env_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
}

#define env_from_pid_ext
if (os_type == os_windows) {
  return external_call(external_define("libprocinfo.dll", "env_from_pid_ext", dll_cdecl, ty_string, 2, ty_real, ty_string), real(argument0), string(argument1));
} else if (os_type == os_macosx) {
  return external_call(external_define("libprocinfo.dylib", "env_from_pid_ext", dll_cdecl, ty_string, 2, ty_real, ty_string), real(argument0), string(argument1));
} else {
  return external_call(external_define("libprocinfo.so", "env_from_pid_ext", dll_cdecl, ty_string, 2, ty_real, ty_string), real(argument0), string(argument1));
}

#define cwd_from_pid
if (os_type == os_windows) {
  return external_call(external_define("libprocinfo.dll", "cwd_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
} else if (os_type == os_macosx) {
  return external_call(external_define("libprocinfo.dylib", "cwd_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
} else {
  return external_call(external_define("libprocinfo.so", "cwd_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
}