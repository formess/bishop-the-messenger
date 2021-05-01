sizes = 64 128 192 256 512 640

png: $(foreach size, $(sizes), dist/logo-$(size).png)

dist/logo-%.png:
	inkscape --export-type=png --export-height=$* -o $@ logo.svg

clean:
	rm -r dist/logo-*.png

.PHONY: clean
