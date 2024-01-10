use utf8;

package SemanticWeb::Schema::smiles;

# ABSTRACT: A specification in form of a line notation for describing the structure of chemical species using short ASCII strings

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'smiles';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specification in form of a line notation for describing the structure of
chemical species using short ASCII strings. Double bond stereochemistry \
indicators may need to be escaped in the string in formats where the
backslash is an escape character.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
