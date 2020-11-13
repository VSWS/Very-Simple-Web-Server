#define env_from_pid
if (os_type == os_windows) {
  process_execute("\"" + working_directory + "getenv.exe\" " + string(argument0));
  return process_evaluate();
} else if (os_type == os_macosx) {
  return external_call(external_define("libprocinfo.dylib", "env_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
} else {
  return external_call(external_define("libprocinfo.so", "env_from_pid", dll_cdecl, ty_string, 1, ty_real), real(argument0));
}