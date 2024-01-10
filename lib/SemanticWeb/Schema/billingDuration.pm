use utf8;

package SemanticWeb::Schema::billingDuration;

# ABSTRACT: Specifies for how long this price (or price component) will be billed

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'billingDuration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies for how long this price (or price component) will be billed. Can
be used, for example, to model the contractual duration of a subscription
or payment plan. Type can be either a Duration or a Number (in which case
the unit of measurement, for example month, is specified by the unitCode
property).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
