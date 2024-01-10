use utf8;

package SemanticWeb::Schema::passengerPriorityStatus;

# ABSTRACT: The priority status assigned to a passenger for security or boarding (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'passengerPriorityStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The priority status assigned to a passenger for security or boarding (e.g.
FastTrack or Priority).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
