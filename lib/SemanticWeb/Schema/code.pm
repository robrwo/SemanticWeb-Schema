use utf8;

package SemanticWeb::Schema::code;

# ABSTRACT: A medical code for the entity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'code';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A medical code for the entity, taken from a controlled vocabulary or
ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
