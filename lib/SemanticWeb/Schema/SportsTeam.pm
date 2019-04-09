use utf8;

package SemanticWeb::Schema::SportsTeam;

# ABSTRACT: Organization: Sports team.

use Moo;

extends qw/ SemanticWeb::Schema::SportsOrganization /;


use MooX::JSON_LD 'SportsTeam';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

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

=cut

has athlete => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'athlete',
);


=head2 C<coach>



A person that acts in a coaching role for a sports team.


A coach should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has coach => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'coach',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::SportsOrganization>

=cut

1;
