use utf8;

package SemanticWeb::Schema::PostalAddress;

# ABSTRACT: The mailing address.

use Moo;

extends qw/ SemanticWeb::Schema::ContactPoint /;


use MooX::JSON_LD 'PostalAddress';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

The mailing address.




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

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=back

=cut

has address_country => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'addressCountry',
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
    json_ld   => 'addressLocality',
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
    json_ld   => 'addressRegion',
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
    json_ld   => 'postOfficeBoxNumber',
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
    json_ld   => 'postalCode',
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
    json_ld   => 'streetAddress',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ContactPoint>

=cut

1;
