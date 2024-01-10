use utf8;

package SemanticWeb::Schema::estimatedFlightDuration;

# ABSTRACT: The estimated time the flight will take.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'estimatedFlightDuration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The estimated time the flight will take.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
