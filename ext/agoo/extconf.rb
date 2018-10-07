require 'mkmf'
require 'rbconfig'

extension_name = 'agoo'
dir_config(extension_name)

$CPPFLAGS += " -DPLATFORM_LINUX" if 'x86_64-linux' == RUBY_PLATFORM
$CFLAGS += " -std=c11"

# Adding the __attribute__ flag only works with gcc compilers and even then it
# does not work to check args with varargs s just remove the check.
CONFIG['warnflags'].slice!(/ -Wsuggest-attribute=format/)

create_makefile(File.join(extension_name, extension_name))

puts ">>>>> Created Makefile for #{RUBY_DESCRIPTION.split(' ')[0]} version #{RUBY_VERSION} on #{RUBY_PLATFORM} <<<<<"

%x{make clean}
