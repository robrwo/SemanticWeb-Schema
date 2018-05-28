package SemanticWeb::Schema::LodgingReservation;

# ABSTRACT: A reservation for lodging at a hotel

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A reservation for lodging at a hotel, motel, inn, etc.</p> <p>Note: This
type is for information about actual reservations, e.g. in confirmation
emails or HTML pages with individual confirmations of reservations.

=end html




=head1 ATTRIBUTES


=head2 C<checkin_time>

C<checkinTime>

The earliest someone may check into a lodging establishment.


A checkin_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has checkin_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'checkinTime',
    json_ld_serializer => \&_serialize_checkin_time,
);

sub _serialize_checkin_time { $_[0]->_serializer('checkin_time') }


=head2 C<checkout_time>

C<checkoutTime>

The latest someone may check out of a lodging establishment.


A checkout_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has checkout_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'checkoutTime',
    json_ld_serializer => \&_serialize_checkout_time,
);

sub _serialize_checkout_time { $_[0]->_serializer('checkout_time') }


=head2 C<lodging_unit_description>

C<lodgingUnitDescription>

A full description of the lodging unit.


A lodging_unit_description should be one of the following types:

=over

=item C<Str>

=back

=cut

has lodging_unit_description => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lodgingUnitDescription',
    json_ld_serializer => \&_serialize_lodging_unit_description,
);

sub _serialize_lodging_unit_description { $_[0]->_serializer('lodging_unit_description') }


=head2 C<lodging_unit_type>

C<lodgingUnitType>

Textual description of the unit type (including suite vs. room, size of
bed, etc.).


A lodging_unit_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=cut

has lodging_unit_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lodgingUnitType',
    json_ld_serializer => \&_serialize_lodging_unit_type,
);

sub _serialize_lodging_unit_type { $_[0]->_serializer('lodging_unit_type') }


=head2 C<num_adults>

C<numAdults>

The number of adults staying in the unit.


A num_adults should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has num_adults => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numAdults',
    json_ld_serializer => \&_serialize_num_adults,
);

sub _serialize_num_adults { $_[0]->_serializer('num_adults') }


=head2 C<num_children>

C<numChildren>

The number of children staying in the unit.


A num_children should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has num_children => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numChildren',
    json_ld_serializer => \&_serialize_num_children,
);

sub _serialize_num_children { $_[0]->_serializer('num_children') }




around json_ld_type => sub { return 'LodgingReservation' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'checkinTime' => \&_serialize_checkin_time,
       'checkoutTime' => \&_serialize_checkout_time,
       'lodgingUnitDescription' => \&_serialize_lodging_unit_description,
       'lodgingUnitType' => \&_serialize_lodging_unit_type,
       'numAdults' => \&_serialize_num_adults,
       'numChildren' => \&_serialize_num_children,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
