use utf8;

package SemanticWeb::Schema::PlayAction;

# ABSTRACT: The act of playing/exercising/training/performing for enjoyment

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'PlayAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of playing/exercising/training/performing for enjoyment, leisure, recreation, Competition or exercise.

Related actions:

=over

=item *

L<SemanticWeb::Schema::ListenAction>: Unlike ListenAction (which is under ConsumeAction), PlayAction refers to performing for an audience or at an event, rather than consuming music.


=item *

L<SemanticWeb::Schema::WatchAction>: Unlike WatchAction (which is under ConsumeAction), PlayAction refers to showing/displaying for an audience or at an event, rather than consuming visual content.


=back



=head1 ATTRIBUTES


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=head2 C<_has_audience>

A predicate for the L</audience> attribute.

=cut

has audience => (
    is        => 'rw',
    predicate => '_has_audience',
    json_ld   => 'audience',
);


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=head2 C<_has_event>

A predicate for the L</event> attribute.

=cut

has event => (
    is        => 'rw',
    predicate => '_has_event',
    json_ld   => 'event',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
