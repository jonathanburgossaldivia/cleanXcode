display dialog "Borrar caché de Xcode evita errores al construir sus proyectos, ¿Seguro desea limpiar su caché?" buttons {"Si", "No"} default button 1 with title "Borrar caché de Xcode"
if the button returned of the result is "Si" then
  tell application "Xcode.app"
		quit
	end tell
	
	set clear to "rm -Rf ~/Library/Developer/Xcode/DerivedData/ModuleCache ~/Library/Developer/Xcode/DerivedData ~/Library/Preferences/com.apple.Xcode.plist /var/folders/**/com.apple.DeveloperTools* ~/Library/Caches/com.apple.dt.Xcode '$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache'"
	do shell script clear with administrator privileges
	
end if
