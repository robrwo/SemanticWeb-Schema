use utf8;

package SemanticWeb::Schema::cutoffTime;

# ABSTRACT: Order cutoff time allows merchants to describe the time after which they will no longer process orders received on that day

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cutoffTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Order cutoff time allows merchants to describe the time after which they will no longer process orders received on that day. For orders processed after cutoff time, one day gets added to the delivery time estimate. This property is expected to be most typically used via the L<SemanticWeb::Schema::ShippingRateSettings> publication pattern. The time is indicated using the ISO-8601 Time format, e.g. "23:30:00-05:00" would represent 6:30 pm Eastern Standard Time (EST) which is 5 hours behind Coordinated Universal Time (UTC).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
