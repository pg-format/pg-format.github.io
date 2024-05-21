default: pg.xml example
	quarto render

pg.xml:
	wget -O $@ https://github.com/pg-format/pg-highlight/raw/main/kate/pg.xml

example: example.mmd example.jsonl

example.mmd: example.pg
	pgraph $< --html -t mmd > $@

example.jsonl: example.pg
	pgraph $< $@

example.json: example.pg
	pgraph $< $@


#example.xml: example.pg
#	pgraph $< $@
