package LDF::Schema::ContactPoint;

# ABSTRACT: A contact point&#x2014;for example

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A contact point&#x2014;for example, a Customer Complaints department.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::GeoShape']>

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has area_served => (
    is        => 'rw',
    predicate => 1,
);


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

=item C<InstanceOf['LDF::Schema::Language']>

=back

=cut

has available_language => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<contact_option>

C<contactOption>

An option available on this contact point (e.g. a toll-free number or
support for hearing-impaired callers).


A contact_option should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPointOption']>

=back

=cut

has contact_option => (
    is        => 'rw',
    predicate => 1,
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

=cut

has contact_type => (
    is        => 'rw',
    predicate => 1,
);


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
);


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
);


=head2 C<hours_available>

C<hoursAvailable>

The hours during which this service or contact is available.


A hours_available should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::OpeningHoursSpecification']>

=back

=cut

has hours_available => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<product_supported>

C<productSupported>

The product or service this support contact point is related to (such as
product support for a particular product line). This can be a specific
product or product line (e.g. "iPhone") or a general category of products
or services (e.g. "smartphones").


A product_supported should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Product']>

=item C<Str>

=back

=cut

has product_supported => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=item C<InstanceOf['LDF::Schema::GeoShape']>

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=back

=cut

has service_area => (
    is        => 'rw',
    predicate => 1,
);


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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ContactPoint' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { areaServed => 'area_served' },
      { availableLanguage => 'available_language' },
      { contactOption => 'contact_option' },
      { contactType => 'contact_type' },
      { email => 'email' },
      { faxNumber => 'fax_number' },
      { hoursAvailable => 'hours_available' },
      { productSupported => 'product_supported' },
      { serviceArea => 'service_area' },
      { telephone => 'telephone' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
