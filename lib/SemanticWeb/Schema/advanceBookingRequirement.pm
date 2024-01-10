use utf8;

package SemanticWeb::Schema::advanceBookingRequirement;

# ABSTRACT: The amount of time that is required between accepting the offer and the actual usage of the resource or service.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'advanceBookingRequirement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount of time that is required between accepting the offer and the
actual usage of the resource or service.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
