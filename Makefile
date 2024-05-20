default: pg.xml
	quarto render

pg.xml:
	wget -O $@ https://github.com/pg-format/pg-highlight/raw/main/kate/pg.xml

example.mmd: example.pg
	pgraph $< --html -t mmd > $@

update: example.mmd default
