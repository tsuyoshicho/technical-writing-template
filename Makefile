SRCDIR = ./doc
PDFDIR = ./pdf

SOURCES    = $(wildcard $(SRCDIR)/*.md)
PDFFILES   = $(addprefix $(PDFDIR)/, $(notdir $(SOURCES:.md=.pdf)))

$(PDFDIR)/%.pdf: $(SRCDIR)/%.md
	-mkdir -p $(PDFDIR)
	pandoc --data-dir=".pandoc" -f markdown+pipe_tables+raw_html+fenced_code_blocks+gfm_auto_identifiers+ascii_identifiers+backtick_code_blocks+autolink_bare_uris+intraword_underscores+strikeout+hard_line_breaks+emoji+shortcut_reference_links+angle_brackets_escapable+smart-yaml_metadata_block --toc --toc-depth=2 --highlight-style=kate --template=md2html.html -t html5 -s --self-contained --pdf-engine=wkhtmltopdf -o $@ $<

.PHONY: clean
clean:
	-rm -rf $(PDFDIR)/

.PHONY: all
all: clean $(PDFFILES)
