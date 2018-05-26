package LDF::Schema::ServiceChannel;

# ABSTRACT: A means for accessing a service, e

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A means for accessing a service, e.g. a government office location, web
site, or phone number.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


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


=head2 C<processing_time>

C<processingTime>

Estimated processing time for the service using this channel.


A processing_time should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has processing_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<provides_service>

C<providesService>

The service provided by this channel.


A provides_service should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Service']>

=back

=cut

has provides_service => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_location>

C<serviceLocation>

The location (e.g. civic structure, local business, etc.) where a person
can go to access the service.


A service_location should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has service_location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_phone>

C<servicePhone>

The phone number to use to access the service.


A service_phone should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=back

=cut

has service_phone => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_postal_address>

C<servicePostalAddress>

The address for accessing the service by mail.


A service_postal_address should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=back

=cut

has service_postal_address => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_sms_number>

C<serviceSmsNumber>

The number to access the service by text message.


A service_sms_number should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=back

=cut

has service_sms_number => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<service_url>

C<serviceUrl>

The website to access the service.


A service_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has service_url => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ServiceChannel' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { availableLanguage => 'available_language' },
      { processingTime => 'processing_time' },
      { providesService => 'provides_service' },
      { serviceLocation => 'service_location' },
      { servicePhone => 'service_phone' },
      { servicePostalAddress => 'service_postal_address' },
      { serviceSmsNumber => 'service_sms_number' },
      { serviceUrl => 'service_url' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
