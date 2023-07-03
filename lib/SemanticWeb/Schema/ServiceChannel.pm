use utf8;

package SemanticWeb::Schema::ServiceChannel;

# ABSTRACT: A means for accessing a service, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ServiceChannel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A means for accessing a service, e.g. a government office location, web
site, or phone number.




=head1 ATTRIBUTES


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


=head2 C<processing_time>

C<processingTime>

Estimated processing time for the service using this channel.


A processing_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_processing_time>

A predicate for the L</processing_time> attribute.

=cut

has processing_time => (
    is        => 'rw',
    predicate => '_has_processing_time',
    json_ld   => 'processingTime',
);


=head2 C<provides_service>

C<providesService>

The service provided by this channel.


A provides_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=head2 C<_has_provides_service>

A predicate for the L</provides_service> attribute.

=cut

has provides_service => (
    is        => 'rw',
    predicate => '_has_provides_service',
    json_ld   => 'providesService',
);


=head2 C<service_location>

C<serviceLocation>

The location (e.g. civic structure, local business, etc.) where a person
can go to access the service.


A service_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_service_location>

A predicate for the L</service_location> attribute.

=cut

has service_location => (
    is        => 'rw',
    predicate => '_has_service_location',
    json_ld   => 'serviceLocation',
);


=head2 C<service_phone>

C<servicePhone>

The phone number to use to access the service.


A service_phone should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=head2 C<_has_service_phone>

A predicate for the L</service_phone> attribute.

=cut

has service_phone => (
    is        => 'rw',
    predicate => '_has_service_phone',
    json_ld   => 'servicePhone',
);


=head2 C<service_postal_address>

C<servicePostalAddress>

The address for accessing the service by mail.


A service_postal_address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=back

=head2 C<_has_service_postal_address>

A predicate for the L</service_postal_address> attribute.

=cut

has service_postal_address => (
    is        => 'rw',
    predicate => '_has_service_postal_address',
    json_ld   => 'servicePostalAddress',
);


=head2 C<service_sms_number>

C<serviceSmsNumber>

The number to access the service by text message.


A service_sms_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=head2 C<_has_service_sms_number>

A predicate for the L</service_sms_number> attribute.

=cut

has service_sms_number => (
    is        => 'rw',
    predicate => '_has_service_sms_number',
    json_ld   => 'serviceSmsNumber',
);


=head2 C<service_url>

C<serviceUrl>

The website to access the service.


A service_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_service_url>

A predicate for the L</service_url> attribute.

=cut

has service_url => (
    is        => 'rw',
    predicate => '_has_service_url',
    json_ld   => 'serviceUrl',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
