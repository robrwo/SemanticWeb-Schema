use utf8;

package SemanticWeb::Schema::Synagogue;

# ABSTRACT: A synagogue.

use Moo;

extends qw/ SemanticWeb::Schema::PlaceOfWorship /;


use MooX::JSON_LD 'Synagogue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A synagogue.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlaceOfWorship>

=cut

1;
