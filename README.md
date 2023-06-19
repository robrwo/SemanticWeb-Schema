# NAME

SemanticWeb::Schema - Moo classes for http://schema.org/ classes

# VERSION

version v21.0.1

The version number of this distribution is based on the corresponding
version of schema classes.

# SYNOPSIS

```perl
use aliased 'SemanticWeb::Schema::Person' => 'Person';

my $person = Person->new(
  name        => 'James Clerk Maxwell',
  birth_date  => '1831-06-13',
  birth_place => 'Edinburgh',
);

print $person->json_ld;
```

# DESCRIPTION

This distribution contains Perl classes for [https://schema.org](https://schema.org)
semantic markup. These can be used to generate JSON-LD
to embed in websites.

This is a base class for the `SemanticWeb::Schema` classes, which
were generated automatically from the following sources:

- [https://schema.org/version/21.0/schemaorg-all-http.rdf](https://schema.org/version/21.0/schemaorg-all-http.rdf)

# ATTRIBUTES

## `id`

If this is set, it adds a `@id` to the ["json\_ld\_data"](#json_ld_data).

## `context`

The context defaults to "http://schema.org/".

# FREQUENTLY ASKED QUESTIONS

## How are these classes generated?

A script in the `devel` directory downloads the RDF descriptions of the data, and uses that to generate the classes.

The author may make some manual changes to work around any bugs in the class generation.

## Why don't you split this into separate distributions?

As of v14, there are more than 890 classes. It would be difficult to rebuild and upload separate distributions for each
class. Each distribution would have separate permissions and nearly duplicate metadata files on CPAN, and would end up
using more disk space and network bandwidth.  It would add the risk of breaking something for users if there was a
missing or inconsistent dependency, and increase the time it would take to install if users want multiple classes.

The benefit of saving disk space is rather small considering the potential problems.

# SUPPORT FOR OLDER PERL VERSIONS

Since v21.0.0, the this module requires Perl v5.14 or later.

Future releases may only support Perl versions released in the last ten years.

# SEE ALSO

- [Moo](https://metacpan.org/pod/Moo)
- [MooX::JSON\_LD](https://metacpan.org/pod/MooX%3A%3AJSON_LD)
- [http://schema.org/](http://schema.org/)

# SOURCE

The development version is on github at [https://github.com/robrwo/SemanticWeb-Schema](https://github.com/robrwo/SemanticWeb-Schema)
and may be cloned from [git://github.com/robrwo/SemanticWeb-Schema.git](git://github.com/robrwo/SemanticWeb-Schema.git)

# BUGS

Please report any bugs or feature requests on the bugtracker website
[https://github.com/robrwo/SemanticWeb-Schema/issues](https://github.com/robrwo/SemanticWeb-Schema/issues)

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

# AUTHOR

Robert Rothenberg <rrwo@cpan.org>

# CONTRIBUTORS

- Mathias Reitinger <reitinger@cpan.org>
- Arikawa Takaya <tky.c10.ver@gmail.com>
- Mohammad S Anwar <mohammad.anwar@yahoo.com>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018-2023 by Robert Rothenberg.

This is free software, licensed under:

```
The Artistic License 2.0 (GPL Compatible)
```
