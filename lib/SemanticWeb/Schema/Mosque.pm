package SemanticWeb::Schema::Mosque;

# ABSTRACT: A mosque.

use Moo;

extends qw/ SemanticWeb::Schema::PlaceOfWorship /;


use MooX::JSON_LD 'Mosque';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A mosque.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlaceOfWorship>

=cut

1;
