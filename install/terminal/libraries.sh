# Need to check pkgconfig and any other missing dependencies
sudo dnf install -y \
  gcc gcc-c++ make pkgconfig autoconf bison clang rust \
  openssl-devel readline-devel zlib-devel libyaml-devel readline-devel ncurses-devel libffi-devel gdbm-devel jemalloc \
  vips ImageMagick ImageMagick-devel mupdf mupdf-tools gtop clutter \
  redis sqlite sqlite-libs mariadb-devel postgresql-devel postgresql
