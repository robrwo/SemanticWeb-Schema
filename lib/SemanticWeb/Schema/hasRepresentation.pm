use utf8;

package SemanticWeb::Schema::hasRepresentation;

# ABSTRACT: A common representation such as a protein sequence or chemical structure for this entity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasRepresentation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A common representation such as a protein sequence or chemical structure
for this entity. For images use schema.org/image.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
