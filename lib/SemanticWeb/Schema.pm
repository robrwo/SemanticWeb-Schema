use utf8;

package SemanticWeb::Schema;

# ABSTRACT: Moo classes for http://schema.org/ classes

use v5.14;
use Moo;

use List::Util qw/ first /;
use MooX::JSON_LD 'base';
use Ref::Util qw/ is_blessed_ref is_plain_arrayref /;
use Types::Standard qw/ Str /;

use namespace::autoclean;

our $VERSION = 'v21.0.1';

# RECOMMEND PREREQ: aliased
# RECOMMEND PREREQ: Class::XSAccessor 1.18
# RECOMMEND PREREQ: Ref::Util::XS
# RECOMMEND PREREQ: Type::Tiny::XS

=encoding utf8

=head1 append:VERSION

The version number of this distribution is based on the corresponding
version of schema classes.

=head1 SYNOPSIS

  use aliased 'SemanticWeb::Schema::Person' => 'Person';

  my $person = Person->new(
    name        => 'James Clerk Maxwell',
    birth_date  => '1831-06-13',
    birth_place => 'Edinburgh',
  );

  print $person->json_ld;

=head1 DESCRIPTION

This distribution contains Perl classes for L<https://schema.org>
semantic markup. These can be used to generate JSON-LD
to embed in websites.

This is a base class for the C<SemanticWeb::Schema> classes, which
were generated automatically from the following sources:

=over


=item L<https://schema.org/version/21.0/schemaorg-all-http.rdf>

=back

=head1 ATTRIBUTES

=head2 C<id>

If this is set, it adds a C<@id> to the L</json_ld_data>.

=cut

has id => (
    is        => 'rw',
    isa       => Str,
    predicate => 1,
    json_ld   => '@id',
);

=head2 C<context>

The context defaults to "http://schema.org/".

=cut

around _build_context => sub { return 'http://schema.org/' };

=head1 FREQUENTLY ASKED QUESTIONS

=head2 How are these classes generated?

A script in the F<devel> directory downloads the RDF descriptions of the data, and uses that to generate the classes.

The author may make some manual changes to work around any bugs in the class generation.

=head2 Why don't you split this into separate distributions?

As of v14, there are more than 890 classes. It would be difficult to rebuild and upload separate distributions for each
class. Each distribution would have separate permissions and nearly duplicate metadata files on CPAN, and would end up
using more disk space and network bandwidth.  It would add the risk of breaking something for users if there was a
missing or inconsistent dependency, and increase the time it would take to install if users want multiple classes.

The benefit of saving disk space is rather small considering the potential problems.

=head1 SUPPORT FOR OLDER PERL VERSIONS

Since v21.0.0, the this module requires Perl v5.14 or later.

Future releases may only support Perl versions released in the last ten years.

=head1 SEE ALSO

=over

=item L<Moo>

=item L<MooX::JSON_LD>

=item L<http://schema.org/>

=back

=cut

1;
