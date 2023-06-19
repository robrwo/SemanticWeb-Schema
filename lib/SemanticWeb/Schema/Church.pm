use utf8;

package SemanticWeb::Schema::Church;

# ABSTRACT: A church.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::PlaceOfWorship /;


use MooX::JSON_LD 'Church';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A church.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlaceOfWorship>

=cut

1;
