

build: draft-ietf-extra-sieve-mailboxid.txt draft-ietf-extra-sieve-mailboxid.html draft-ietf-extra-sieve-mailboxid.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
