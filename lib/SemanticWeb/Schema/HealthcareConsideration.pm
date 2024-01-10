use utf8;

package SemanticWeb::Schema::HealthcareConsideration;

# ABSTRACT: Item is a pharmaceutical (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'HealthcareConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Item is a pharmaceutical (e.g., a prescription or OTC drug) or a restricted
medical device.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
