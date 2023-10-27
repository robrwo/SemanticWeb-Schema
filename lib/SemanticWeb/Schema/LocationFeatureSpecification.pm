use utf8;

package SemanticWeb::Schema::LocationFeatureSpecification;

# ABSTRACT: Specifies a location feature by providing a structured value representing a feature of an accommodation as a property-value pair of varying degrees of formality.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::PropertyValue /;


use MooX::JSON_LD 'LocationFeatureSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

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

=head2 C<_has_hours_available>

A predicate for the L</hours_available> attribute.

=cut

has hours_available => (
    is        => 'rw',
    predicate => '_has_hours_available',
    json_ld   => 'hoursAvailable',
);


=head2 C<valid_from>

C<validFrom>

The date when the item becomes valid.


A valid_from should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_from>

A predicate for the L</valid_from> attribute.

=cut

has valid_from => (
    is        => 'rw',
    predicate => '_has_valid_from',
    json_ld   => 'validFrom',
);


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_through>

A predicate for the L</valid_through> attribute.

=cut

has valid_through => (
    is        => 'rw',
    predicate => '_has_valid_through',
    json_ld   => 'validThrough',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PropertyValue>

=cut

1;
