package SemanticWeb::Schema::ContactPoint;

# ABSTRACT: A contact point&#x2014;for example

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A contact point&#x2014;for example, a Customer Complaints department.




=head1 ATTRIBUTES


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has area_served => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'areaServed',
    json_ld_serializer => \&_serialize_area_served,
);

sub _serialize_area_served { $_[0]->_serializer('area_served') }


=head2 C<available_language>

C<availableLanguage>

=begin html

A language someone may use with or at the item, service or place. Please
use one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink" href="http://schema.org/inLanguage">inLanguage</a>

=end html


A available_language should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=back

=cut

has available_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableLanguage',
    json_ld_serializer => \&_serialize_available_language,
);

sub _serialize_available_language { $_[0]->_serializer('available_language') }


=head2 C<contact_option>

C<contactOption>

An option available on this contact point (e.g. a toll-free number or
support for hearing-impaired callers).


A contact_option should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPointOption']>

=back

=cut

has contact_option => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contactOption',
    json_ld_serializer => \&_serialize_contact_option,
);

sub _serialize_contact_option { $_[0]->_serializer('contact_option') }


=head2 C<contact_type>

C<contactType>

A person or organization can have different contact points, for different
purposes. For example, a sales contact point, a PR contact point and so on.
This property is used to specify the kind of contact point.


A contact_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has contact_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contactType',
    json_ld_serializer => \&_serialize_contact_type,
);

sub _serialize_contact_type { $_[0]->_serializer('contact_type') }


=head2 C<email>



Email address.


A email should be one of the following types:

=over

=item C<Str>

=back

=cut

has email => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'email',
    json_ld_serializer => \&_serialize_email,
);

sub _serialize_email { $_[0]->_serializer('email') }


=head2 C<fax_number>

C<faxNumber>

The fax number.


A fax_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has fax_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'faxNumber',
    json_ld_serializer => \&_serialize_fax_number,
);

sub _serialize_fax_number { $_[0]->_serializer('fax_number') }


=head2 C<hours_available>

C<hoursAvailable>

The hours during which this service or contact is available.


A hours_available should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=cut

has hours_available => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hoursAvailable',
    json_ld_serializer => \&_serialize_hours_available,
);

sub _serialize_hours_available { $_[0]->_serializer('hours_available') }


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

=cut

has product_supported => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productSupported',
    json_ld_serializer => \&_serialize_product_supported,
);

sub _serialize_product_supported { $_[0]->_serializer('product_supported') }


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=cut

has service_area => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceArea',
    json_ld_serializer => \&_serialize_service_area,
);

sub _serialize_service_area { $_[0]->_serializer('service_area') }


=head2 C<telephone>



The telephone number.


A telephone should be one of the following types:

=over

=item C<Str>

=back

=cut

has telephone => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'telephone',
    json_ld_serializer => \&_serialize_telephone,
);

sub _serialize_telephone { $_[0]->_serializer('telephone') }




around json_ld_type => sub { return 'ContactPoint' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'areaServed' => \&_serialize_area_served,
       'availableLanguage' => \&_serialize_available_language,
       'contactOption' => \&_serialize_contact_option,
       'contactType' => \&_serialize_contact_type,
       'email' => \&_serialize_email,
       'faxNumber' => \&_serialize_fax_number,
       'hoursAvailable' => \&_serialize_hours_available,
       'productSupported' => \&_serialize_product_supported,
       'serviceArea' => \&_serialize_service_area,
       'telephone' => \&_serialize_telephone,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
