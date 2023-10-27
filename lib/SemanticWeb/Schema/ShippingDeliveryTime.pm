use utf8;

package SemanticWeb::Schema::ShippingDeliveryTime;

# ABSTRACT: ShippingDeliveryTime provides various pieces of information about delivery times for shipping.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'ShippingDeliveryTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

ShippingDeliveryTime provides various pieces of information about delivery
times for shipping.




=head1 ATTRIBUTES


=head2 C<business_days>

C<businessDays>

Days of the week when the merchant typically operates, indicated via
opening hours markup.


A business_days should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=head2 C<_has_business_days>

A predicate for the L</business_days> attribute.

=cut

has business_days => (
    is        => 'rw',
    predicate => '_has_business_days',
    json_ld   => 'businessDays',
);


=head2 C<cutoff_time>

C<cutoffTime>

Order cutoff time allows merchants to describe the time after which they will no longer process orders received on that day. For orders processed after cutoff time, one day gets added to the delivery time estimate. This property is expected to be most typically used via the L<SemanticWeb::Schema::ShippingRateSettings> publication pattern. The time is indicated using the ISO-8601 Time format, e.g. "23:30:00-05:00" would represent 6:30 pm Eastern Standard Time (EST) which is 5 hours behind Coordinated Universal Time (UTC).

A cutoff_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_cutoff_time>

A predicate for the L</cutoff_time> attribute.

=cut

has cutoff_time => (
    is        => 'rw',
    predicate => '_has_cutoff_time',
    json_ld   => 'cutoffTime',
);


=head2 C<handling_time>

C<handlingTime>

The typical delay between the receipt of the order and the goods either
leaving the warehouse or being prepared for pickup, in case the delivery
method is on site pickup. Typical properties: minValue, maxValue, unitCode
(d for DAY). This is by common convention assumed to mean business days (if
a unitCode is used, coded as "d"), i.e. only counting days when the
business normally operates.


A handling_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_handling_time>

A predicate for the L</handling_time> attribute.

=cut

has handling_time => (
    is        => 'rw',
    predicate => '_has_handling_time',
    json_ld   => 'handlingTime',
);


=head2 C<transit_time>

C<transitTime>

The typical delay the order has been sent for delivery and the goods reach
the final customer. Typical properties: minValue, maxValue, unitCode (d for
DAY).


A transit_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_transit_time>

A predicate for the L</transit_time> attribute.

=cut

has transit_time => (
    is        => 'rw',
    predicate => '_has_transit_time',
    json_ld   => 'transitTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
