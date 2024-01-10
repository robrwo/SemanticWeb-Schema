use utf8;

package SemanticWeb::Schema::additionalType;

# ABSTRACT: An additional type for the item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'additionalType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An additional type for the item, typically used for adding more specific
types from external vocabularies in microdata syntax. This is a
relationship between something and a class that the thing is in. Typically
the value is a URI-identified RDF class, and in this case corresponds to
the use of rdf:type in RDF. Text values can be used sparingly, for cases
where useful information can be added without their being an appropriate
schema to reference. In the case of text values, the class label should
follow the schema.org <a
href="http://schema.org/docs/styleguide.html">style guide</a>.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
