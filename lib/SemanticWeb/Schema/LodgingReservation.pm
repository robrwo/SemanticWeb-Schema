use utf8;

package SemanticWeb::Schema::LodgingReservation;

# ABSTRACT: A reservation for lodging at a hotel

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'LodgingReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A reservation for lodging at a hotel, motel, inn, etc.<br/><br/> Note:
This type is for information about actual reservations, e.g. in
confirmation emails or HTML pages with individual confirmations of
reservations.<p>

=end html




=head1 ATTRIBUTES


=head2 C<checkin_time>

C<checkinTime>

The earliest someone may check into a lodging establishment.


A checkin_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_checkin_time>

A predicate for the L</checkin_time> attribute.

=cut

has checkin_time => (
    is        => 'rw',
    predicate => '_has_checkin_time',
    json_ld   => 'checkinTime',
);


=head2 C<checkout_time>

C<checkoutTime>

The latest someone may check out of a lodging establishment.


A checkout_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_checkout_time>

A predicate for the L</checkout_time> attribute.

=cut

has checkout_time => (
    is        => 'rw',
    predicate => '_has_checkout_time',
    json_ld   => 'checkoutTime',
);


=head2 C<lodging_unit_description>

C<lodgingUnitDescription>

A full description of the lodging unit.


A lodging_unit_description should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_lodging_unit_description>

A predicate for the L</lodging_unit_description> attribute.

=cut

has lodging_unit_description => (
    is        => 'rw',
    predicate => '_has_lodging_unit_description',
    json_ld   => 'lodgingUnitDescription',
);


=head2 C<lodging_unit_type>

C<lodgingUnitType>

Textual description of the unit type (including suite vs. room, size of
bed, etc.).


A lodging_unit_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_lodging_unit_type>

A predicate for the L</lodging_unit_type> attribute.

=cut

has lodging_unit_type => (
    is        => 'rw',
    predicate => '_has_lodging_unit_type',
    json_ld   => 'lodgingUnitType',
);


=head2 C<num_adults>

C<numAdults>

The number of adults staying in the unit.


A num_adults should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_num_adults>

A predicate for the L</num_adults> attribute.

=cut

has num_adults => (
    is        => 'rw',
    predicate => '_has_num_adults',
    json_ld   => 'numAdults',
);


=head2 C<num_children>

C<numChildren>

The number of children staying in the unit.


A num_children should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_num_children>

A predicate for the L</num_children> attribute.

=cut

has num_children => (
    is        => 'rw',
    predicate => '_has_num_children',
    json_ld   => 'numChildren',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
