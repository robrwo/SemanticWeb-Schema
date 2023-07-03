use utf8;

package SemanticWeb::Schema::Role;

# ABSTRACT: Represents additional information about a relationship or property

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Role';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

Represents additional information about a relationship or property. For
example a Role can be used to say that a 'member' role linking some
SportsTeam to a player occurred during a particular time period. Or that a
Person's 'actor' role in a Movie was for some particular characterName.
Such properties can be attached to a Role entity, which is then associated
with the main entities using ordinary properties like 'member' or 'actor'.
See also [blog post](http://blog.schema.org/2014/06/introducing-role.html).




=head1 ATTRIBUTES


=head2 C<end_date>

C<endDate>

The end date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A end_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_end_date>

A predicate for the L</end_date> attribute.

=cut

has end_date => (
    is        => 'rw',
    predicate => '_has_end_date',
    json_ld   => 'endDate',
);


=head2 C<named_position>

C<namedPosition>

A position played, performed or filled by a person or organization, as part
of an organization. For example, an athlete in a SportsTeam might play in
the position named 'Quarterback'.


A named_position should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_named_position>

A predicate for the L</named_position> attribute.

=cut

has named_position => (
    is        => 'rw',
    predicate => '_has_named_position',
    json_ld   => 'namedPosition',
);


=head2 C<role_name>

C<roleName>

A role played, performed or filled by a person or organization. For
example, the team of creators for a comic book might fill the roles named
'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might
play in the position named 'Quarterback'.


A role_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_role_name>

A predicate for the L</role_name> attribute.

=cut

has role_name => (
    is        => 'rw',
    predicate => '_has_role_name',
    json_ld   => 'roleName',
);


=head2 C<start_date>

C<startDate>

The start date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A start_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_start_date>

A predicate for the L</start_date> attribute.

=cut

has start_date => (
    is        => 'rw',
    predicate => '_has_start_date',
    json_ld   => 'startDate',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
