use utf8;

package SemanticWeb::Schema::MotorizedBicycle;

# ABSTRACT: A motorized bicycle is a bicycle with an attached motor used to power the vehicle

use Moo;

extends qw/ SemanticWeb::Schema::Vehicle /;


use MooX::JSON_LD 'MotorizedBicycle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.2';

=encoding utf8

=head1 DESCRIPTION

A motorized bicycle is a bicycle with an attached motor used to power the
vehicle, or to assist with pedaling.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Vehicle>

=cut

1;
