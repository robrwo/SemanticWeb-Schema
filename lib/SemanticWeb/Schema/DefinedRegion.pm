use utf8;

package SemanticWeb::Schema::DefinedRegion;

# ABSTRACT: A DefinedRegion is a geographic area defined by potentially arbitrary (rather than political

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'DefinedRegion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A DefinedRegion is a geographic area defined by potentially arbitrary
(rather than political, administrative or natural geographical) criteria.
Properties are provided for defining a region by reference to sets of
postal codes. Examples: a delivery destination when shopping. Region where
regional pricing is configured. Requirement 1: Country: US States: "NY",
"CA" Requirement 2: Country: US PostalCode Set: { [94000-94585], [97000,
97999], [13000, 13599]} { [12345, 12345], [78945, 78945], } Region = state,
canton, prefecture, autonomous community... 




=head1 ATTRIBUTES


=head2 C<address_country>

C<addressCountry>

The country. For example, USA. You can also provide the two-letter [ISO
3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1).


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


=head2 C<address_region>

C<addressRegion>

The region in which the locality is, and which is in the country. For
example, California or another appropriate first-level [Administrative
division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by
_country) 


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


=head2 C<postal_code_prefix>

C<postalCodePrefix>

A defined range of postal codes indicated by a common textual prefix. Used
for non-numeric systems such as UK.


A postal_code_prefix should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_postal_code_prefix>

A predicate for the L</postal_code_prefix> attribute.

=cut

has postal_code_prefix => (
    is        => 'rw',
    predicate => '_has_postal_code_prefix',
    json_ld   => 'postalCodePrefix',
);


=head2 C<postal_code_range>

C<postalCodeRange>

A defined range of postal codes.


A postal_code_range should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalCodeRangeSpecification']>

=back

=head2 C<_has_postal_code_range>

A predicate for the L</postal_code_range> attribute.

=cut

has postal_code_range => (
    is        => 'rw',
    predicate => '_has_postal_code_range',
    json_ld   => 'postalCodeRange',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
