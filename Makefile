PYTHON=$$(which python2 || which python)

cactus: venv/bin/cactus

.PHONY: clean

clean:
	rm -rf venv
	rm -rf .build

venv/bin/cactus: venv
	venv/bin/pip install -U cactus
	@touch venv/bin/cactus

venv: venv/bin/activate

venv/bin/activate:
	test -d venv || $(PYTHON) -m virtualenv venv
	@touch venv/bin/activate

site: .build/index.html cactus

.build/index.html:
	venv/bin/cactus build
