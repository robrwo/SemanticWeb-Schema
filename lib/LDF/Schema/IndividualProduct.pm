package LDF::Schema::IndividualProduct;

# ABSTRACT: A single, identifiable product instance (e

use Moo;

extends qw/ LDF::Schema::Product /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A single, identifiable product instance (e.g. a laptop with a particular
serial number).



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<serial_number>

C<serialNumber>

The serial number or any alphanumeric identifier of a particular product.
When attached to an offer, it is a shortcut for the serial number of the
product included in the offer.


A serial_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has serial_number => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'IndividualProduct' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { serialNumber => 'serial_number' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Product>

=cut

1;
