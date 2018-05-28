package SemanticWeb::Schema::LocationFeatureSpecification;

# ABSTRACT: Specifies a location feature by providing a structured value representing a feature of an accommodation as a property-value pair of varying degrees of formality.

use Moo;

extends qw/ SemanticWeb::Schema::PropertyValue /;


use MooX::JSON_LD 'LocationFeatureSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Specifies a location feature by providing a structured value representing a
feature of an accommodation as a property-value pair of varying degrees of
formality.




=head1 ATTRIBUTES


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


=head2 C<valid_from>

C<validFrom>

The date when the item becomes valid.


A valid_from should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_from => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validFrom',
    json_ld_serializer => \&_serialize_valid_from,
);

sub _serialize_valid_from { $_[0]->_serializer('valid_from') }


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_through => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validThrough',
    json_ld_serializer => \&_serialize_valid_through,
);

sub _serialize_valid_through { $_[0]->_serializer('valid_through') }




=head1 SEE ALSO



L<SemanticWeb::Schema::PropertyValue>

=cut

1;
