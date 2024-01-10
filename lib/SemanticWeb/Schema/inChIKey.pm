use utf8;

package SemanticWeb::Schema::inChIKey;

# ABSTRACT: InChIKey is a hashed version of the full InChI (using the SHA-256 algorithm).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'inChIKey';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

InChIKey is a hashed version of the full InChI (using the SHA-256
algorithm).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
