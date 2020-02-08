use utf8;

package SemanticWeb::Schema::HinduTemple;

# ABSTRACT: A Hindu temple.

use Moo;

extends qw/ SemanticWeb::Schema::PlaceOfWorship /;


use MooX::JSON_LD 'HinduTemple';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.2';

=encoding utf8

=head1 DESCRIPTION

A Hindu temple.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlaceOfWorship>

=cut

1;
