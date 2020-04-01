use utf8;

package SemanticWeb::Schema::PostalAddress;

# ABSTRACT: The mailing address.

use Moo;

extends qw/ SemanticWeb::Schema::ContactPoint /;


use MooX::JSON_LD 'PostalAddress';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

The mailing address.




=head1 ATTRIBUTES


=head2 C<address_country>

C<addressCountry>

=begin html

<p>The country. For example, USA. You can also provide the two-letter <a
href="http://en.wikipedia.org/wiki/ISO_3166-1">ISO 3166-1 alpha-2 country
code</a>.<p>

=end html


A address_country should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=item C<Str>

=back

=head2 C<_has_address_country>

A predicate for the L</address_country> attribute.

=cut

has address_country => (
    is        => 'rw',
    predicate => '_has_address_country',
    json_ld   => 'addressCountry',
);


=head2 C<address_locality>

C<addressLocality>

The locality in which the street address is, and which is in the region.
For example, Mountain View.


A address_locality should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_address_locality>

A predicate for the L</address_locality> attribute.

=cut

has address_locality => (
    is        => 'rw',
    predicate => '_has_address_locality',
    json_ld   => 'addressLocality',
);


=head2 C<address_region>

C<addressRegion>

=begin html

<p>The region in which the locality is, and which is in the country. For
example, California or another appropriate first-level <a
href="https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_cou
ntry">Administrative division</a><p>

=end html


A address_region should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_address_region>

A predicate for the L</address_region> attribute.

=cut

has address_region => (
    is        => 'rw',
    predicate => '_has_address_region',
    json_ld   => 'addressRegion',
);


=head2 C<post_office_box_number>

C<postOfficeBoxNumber>

The post office box number for PO box addresses.


A post_office_box_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_post_office_box_number>

A predicate for the L</post_office_box_number> attribute.

=cut

has post_office_box_number => (
    is        => 'rw',
    predicate => '_has_post_office_box_number',
    json_ld   => 'postOfficeBoxNumber',
);


=head2 C<postal_code>

C<postalCode>

The postal code. For example, 94043.


A postal_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_postal_code>

A predicate for the L</postal_code> attribute.

=cut

has postal_code => (
    is        => 'rw',
    predicate => '_has_postal_code',
    json_ld   => 'postalCode',
);


=head2 C<street_address>

C<streetAddress>

The street address. For example, 1600 Amphitheatre Pkwy.


A street_address should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_street_address>

A predicate for the L</street_address> attribute.

=cut

has street_address => (
    is        => 'rw',
    predicate => '_has_street_address',
    json_ld   => 'streetAddress',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ContactPoint>

=cut

1;
