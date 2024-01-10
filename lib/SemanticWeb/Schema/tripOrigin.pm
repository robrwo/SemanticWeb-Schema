use utf8;

package SemanticWeb::Schema::tripOrigin;

# ABSTRACT: The location of origin of the trip

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tripOrigin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The location of origin of the trip, prior to any destination(s).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
