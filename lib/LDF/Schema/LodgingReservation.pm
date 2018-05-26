package LDF::Schema::LodgingReservation;

# ABSTRACT: A reservation for lodging at a hotel

use Moo;

extends qw/ LDF::Schema::Reservation /;


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



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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
);


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
);


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
);


=head2 C<lodging_unit_type>

C<lodgingUnitType>

Textual description of the unit type (including suite vs. room, size of
bed, etc.).


A lodging_unit_type should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QualitativeValue']>

=item C<Str>

=back

=cut

has lodging_unit_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<num_adults>

C<numAdults>

The number of adults staying in the unit.


A num_adults should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has num_adults => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<num_children>

C<numChildren>

The number of children staying in the unit.


A num_children should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has num_children => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LodgingReservation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { checkinTime => 'checkin_time' },
      { checkoutTime => 'checkout_time' },
      { lodgingUnitDescription => 'lodging_unit_description' },
      { lodgingUnitType => 'lodging_unit_type' },
      { numAdults => 'num_adults' },
      { numChildren => 'num_children' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Reservation>

=cut

1;
