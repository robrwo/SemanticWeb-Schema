package LDF::Schema::PostalAddress;

# ABSTRACT: The mailing address.

use Moo;

extends qw/ LDF::Schema::ContactPoint /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The mailing address.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<address_country>

C<addressCountry>

=begin html

The country. For example, USA. You can also provide the two-letter <a
href="http://en.wikipedia.org/wiki/ISO_3166-1">ISO 3166-1 alpha-2 country
code</a>.

=end html


A address_country should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Country']>

=item C<Str>

=back

=cut

has address_country => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<address_locality>

C<addressLocality>

The locality. For example, Mountain View.


A address_locality should be one of the following types:

=over

=item C<Str>

=back

=cut

has address_locality => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<address_region>

C<addressRegion>

The region. For example, CA.


A address_region should be one of the following types:

=over

=item C<Str>

=back

=cut

has address_region => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<post_office_box_number>

C<postOfficeBoxNumber>

The post office box number for PO box addresses.


A post_office_box_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has post_office_box_number => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<postal_code>

C<postalCode>

The postal code. For example, 94043.


A postal_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has postal_code => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<street_address>

C<streetAddress>

The street address. For example, 1600 Amphitheatre Pkwy.


A street_address should be one of the following types:

=over

=item C<Str>

=back

=cut

has street_address => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PostalAddress' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { addressCountry => 'address_country' },
      { addressLocality => 'address_locality' },
      { addressRegion => 'address_region' },
      { postOfficeBoxNumber => 'post_office_box_number' },
      { postalCode => 'postal_code' },
      { streetAddress => 'street_address' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::ContactPoint>

=cut

1;
