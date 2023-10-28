use utf8;

package SemanticWeb::Schema::SportsTeam;

# ABSTRACT: Organization: Sports team.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::SportsOrganization /;


use MooX::JSON_LD 'SportsTeam';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

Organization: Sports team.




=head1 ATTRIBUTES


=head2 C<athlete>



A person that acts as performing member of a sports team; a player as
opposed to a coach.


A athlete should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_athlete>

A predicate for the L</athlete> attribute.

=cut

has athlete => (
    is        => 'rw',
    predicate => '_has_athlete',
    json_ld   => 'athlete',
);


=head2 C<coach>



A person that acts in a coaching role for a sports team.


A coach should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_coach>

A predicate for the L</coach> attribute.

=cut

has coach => (
    is        => 'rw',
    predicate => '_has_coach',
    json_ld   => 'coach',
);


=head2 C<gender>



Gender of something, typically a L<SemanticWeb::Schema::Person>, but possibly also fictional characters, animals, etc. While http://schema.org/Male and http://schema.org/Female may be used, text strings are also acceptable for people who do not identify as a binary gender. The [[gender]] property can also be used in an extended sense to cover e.g. the gender of sports teams. As with the gender of individuals, we do not try to enumerate all possibilities. A mixed-gender L<SemanticWeb::Schema::SportsTeam> can be indicated with a text value of "Mixed".

A gender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GenderType']>

=item C<Str>

=back

=head2 C<_has_gender>

A predicate for the L</gender> attribute.

=cut

has gender => (
    is        => 'rw',
    predicate => '_has_gender',
    json_ld   => 'gender',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::SportsOrganization>

=cut

1;
