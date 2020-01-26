use utf8;

package SemanticWeb::Schema::OpeningHoursSpecification;

# ABSTRACT: A structured value providing information about the opening hours of a place or a certain service inside a place

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'OpeningHoursSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A structured value providing information about the opening hours of a
place or a certain service inside a place.<br/><br/> The place is
<strong>open</strong> if the <a class="localLink"
href="http://schema.org/opens">opens</a> property is specified, and
<strong>closed</strong> otherwise.<br/><br/> If the value for the <a
class="localLink" href="http://schema.org/closes">closes</a> property is
less than the value for the <a class="localLink"
href="http://schema.org/opens">opens</a> property then the hour range is
assumed to span over the next day.<p>

=end html




=head1 ATTRIBUTES


=head2 C<closes>



The closing hour of the place or service on the given day(s) of the week.


A closes should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_closes>

A predicate for the L</closes> attribute.

=cut

has closes => (
    is        => 'rw',
    predicate => '_has_closes',
    json_ld   => 'closes',
);


=head2 C<day_of_week>

C<dayOfWeek>

The day of the week for which these opening hours are valid.


A day_of_week should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DayOfWeek']>

=back

=head2 C<_has_day_of_week>

A predicate for the L</day_of_week> attribute.

=cut

has day_of_week => (
    is        => 'rw',
    predicate => '_has_day_of_week',
    json_ld   => 'dayOfWeek',
);


=head2 C<opens>



The opening hour of the place or service on the given day(s) of the week.


A opens should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_opens>

A predicate for the L</opens> attribute.

=cut

has opens => (
    is        => 'rw',
    predicate => '_has_opens',
    json_ld   => 'opens',
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



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
