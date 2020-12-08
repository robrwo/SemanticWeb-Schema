use utf8;

package SemanticWeb::Schema::LeaveAction;

# ABSTRACT: An agent leaves an event / group with participants/friends at a location

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'LeaveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

An agent leaves an event / group with participants/friends at a location.

Related actions:

=over

=item *

L<SemanticWeb::Schema::JoinAction>: The antonym of LeaveAction.


=item *

L<SemanticWeb::Schema::UnRegisterAction>: Unlike UnRegisterAction, LeaveAction implies leaving a group/team of people rather than a service.


=back



=head1 ATTRIBUTES


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



L<SemanticWeb::Schema::InteractAction>

=cut

1;
