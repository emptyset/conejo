import spacy
nlp = spacy.load('en')
doc = nlp(u'Hello, world. Here are two sentences.')
