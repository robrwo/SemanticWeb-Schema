use utf8;

package SemanticWeb::Schema::ContactPoint;

# ABSTRACT: A contact point—for example

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'ContactPoint';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A contact point&#x2014;for example, a Customer Complaints department.




=head1 ATTRIBUTES


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=head2 C<_has_area_served>

A predicate for the L</area_served> attribute.

=cut

has area_served => (
    is        => 'rw',
    predicate => '_has_area_served',
    json_ld   => 'areaServed',
);


=head2 C<available_language>

C<availableLanguage>

A language someone may use with or at the item, service or place. Please use one of the language codes from the L<IETF BCP 47 standard|http://tools.ietf.org/html/bcp47>. See also [[inLanguage]].

A available_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=head2 C<_has_available_language>

A predicate for the L</available_language> attribute.

=cut

has available_language => (
    is        => 'rw',
    predicate => '_has_available_language',
    json_ld   => 'availableLanguage',
);


=head2 C<contact_option>

C<contactOption>

An option available on this contact point (e.g. a toll-free number or
support for hearing-impaired callers).


A contact_option should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPointOption']>

=back

=head2 C<_has_contact_option>

A predicate for the L</contact_option> attribute.

=cut

has contact_option => (
    is        => 'rw',
    predicate => '_has_contact_option',
    json_ld   => 'contactOption',
);


=head2 C<contact_type>

C<contactType>

A person or organization can have different contact points, for different
purposes. For example, a sales contact point, a PR contact point and so on.
This property is used to specify the kind of contact point.


A contact_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_contact_type>

A predicate for the L</contact_type> attribute.

=cut

has contact_type => (
    is        => 'rw',
    predicate => '_has_contact_type',
    json_ld   => 'contactType',
);


=head2 C<email>



Email address.


A email should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_email>

A predicate for the L</email> attribute.

=cut

has email => (
    is        => 'rw',
    predicate => '_has_email',
    json_ld   => 'email',
);


=head2 C<fax_number>

C<faxNumber>

The fax number.


A fax_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_fax_number>

A predicate for the L</fax_number> attribute.

=cut

has fax_number => (
    is        => 'rw',
    predicate => '_has_fax_number',
    json_ld   => 'faxNumber',
);


=head2 C<hours_available>

C<hoursAvailable>

The hours during which this service or contact is available.


A hours_available should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=head2 C<_has_hours_available>

A predicate for the L</hours_available> attribute.

=cut

has hours_available => (
    is        => 'rw',
    predicate => '_has_hours_available',
    json_ld   => 'hoursAvailable',
);


=head2 C<product_supported>

C<productSupported>

The product or service this support contact point is related to (such as
product support for a particular product line). This can be a specific
product or product line (e.g. "iPhone") or a general category of products
or services (e.g. "smartphones").


A product_supported should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<Str>

=back

=head2 C<_has_product_supported>

A predicate for the L</product_supported> attribute.

=cut

has product_supported => (
    is        => 'rw',
    predicate => '_has_product_supported',
    json_ld   => 'productSupported',
);


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_service_area>

A predicate for the L</service_area> attribute.

=cut

has service_area => (
    is        => 'rw',
    predicate => '_has_service_area',
    json_ld   => 'serviceArea',
);


=head2 C<telephone>



The telephone number.


A telephone should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_telephone>

A predicate for the L</telephone> attribute.

=cut

has telephone => (
    is        => 'rw',
    predicate => '_has_telephone',
    json_ld   => 'telephone',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
