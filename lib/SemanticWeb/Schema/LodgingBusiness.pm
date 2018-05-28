package SemanticWeb::Schema::LodgingBusiness;

# ABSTRACT: A lodging business

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'LodgingBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A lodging business, such as a motel, hotel, or inn.




=head1 ATTRIBUTES


=head2 C<amenity_feature>

C<amenityFeature>

An amenity feature (e.g. a characteristic or service) of the Accommodation.
This generic property does not make a statement about whether the feature
is included in an offer for the main accommodation or available at extra
costs.


A amenity_feature should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::LocationFeatureSpecification']>

=back

=cut

has amenity_feature => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'amenityFeature',
    json_ld_serializer => \&_serialize_amenity_feature,
);

sub _serialize_amenity_feature { $_[0]->_serializer('amenity_feature') }


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=cut

has audience => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'audience',
    json_ld_serializer => \&_serialize_audience,
);

sub _serialize_audience { $_[0]->_serializer('audience') }


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


=head2 C<checkin_time>

C<checkinTime>

The earliest someone may check into a lodging establishment.


A checkin_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has checkin_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'checkinTime',
    json_ld_serializer => \&_serialize_checkin_time,
);

sub _serialize_checkin_time { $_[0]->_serializer('checkin_time') }


=head2 C<checkout_time>

C<checkoutTime>

The latest someone may check out of a lodging establishment.


A checkout_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has checkout_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'checkoutTime',
    json_ld_serializer => \&_serialize_checkout_time,
);

sub _serialize_checkout_time { $_[0]->_serializer('checkout_time') }


=head2 C<pets_allowed>

C<petsAllowed>

Indicates whether pets are allowed to enter the accommodation or lodging
business. More detailed information can be put in a text value.


A pets_allowed should be one of the following types:

=over

=item C<Bool>

=item C<Str>

=back

=cut

has pets_allowed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'petsAllowed',
    json_ld_serializer => \&_serialize_pets_allowed,
);

sub _serialize_pets_allowed { $_[0]->_serializer('pets_allowed') }


=head2 C<star_rating>

C<starRating>

An official rating for a lodging business or food establishment, e.g. from
national associations or standards bodies. Use the author property to
indicate the rating organization, e.g. as an Organization with name such as
(e.g. HOTREC, DEHOGA, WHR, or Hotelstars).


A star_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Rating']>

=back

=cut

has star_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'starRating',
    json_ld_serializer => \&_serialize_star_rating,
);

sub _serialize_star_rating { $_[0]->_serializer('star_rating') }




=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
