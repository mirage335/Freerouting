#####Program

# WARNING: OBSOLETE. No production use.
# _java_freerouting() {
# 	if type /usr/lib/jvm/java-11-openjdk-amd64/bin/java
# 	then
# 		/usr/lib/jvm/java-11-openjdk-amd64/bin/java "$@"
# 		return
# 	fi
# 	
# 	if type /usr/lib/jvm/java-8-openjdk-amd64/bin/java
# 	then
# 		/usr/lib/jvm/java-8-openjdk-amd64/bin/java "$@"
# 		return
# 	fi
# 	
# 	if type /usr/lib/jvm/java-8-openjdk/jre/bin/java
# 	then
# 		/usr/lib/jvm/java-8-openjdk/jre/bin/java "$@"
# 		return
# 	fi
# 	
# 	_messagePlain_bad 'fail: missing: java'
# }

# _freerouting() {
# 	_java_freerouting -jar "$scriptLib"/freerouting/binaries/FreeRouting.jar "$@"
# }

# WARNING: No known production use.
freerouting() {
	_freerouting "$@"
}

#Typically launches an application - ie. through virtualized container.
_launch() {
	_freerouting "$@"
	#"$@"
}

#Typically gathers command/variable scripts from other (ie. yaml) file types (ie. AppImage recipes).
_collect() {
	false
}

#Typical program entry point, absent any instancing support.
_enter() {
	_launch "$@"
}

#Typical program entry point.
_main() {
	_start
	
	_collect
	
	_enter "$@"
	
	_stop
}
