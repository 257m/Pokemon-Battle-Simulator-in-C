{ pkgs }: {
	deps = [
		pkgs.valgrind
  pkgs.hol
pkgs.pkgconfig
pkgs.vim
pkgs.clang_12
		pkgs.ccls
		pkgs.gdb
		pkgs.gnumake
    pkgs.man-db
	];
}