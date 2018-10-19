use utf8;

package SemanticWeb::Schema::CatholicChurch;

# ABSTRACT: A Catholic church.

use Moo;

extends qw/ SemanticWeb::Schema::PlaceOfWorship /;


use MooX::JSON_LD 'CatholicChurch';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

A Catholic church.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlaceOfWorship>

=cut

1;
