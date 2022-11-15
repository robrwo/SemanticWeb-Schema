use utf8;

package SemanticWeb::Schema::InformAction;

# ABSTRACT: The act of notifying someone of information pertinent to them

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'InformAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of notifying someone of information pertinent to them, with no
expectation of a response.




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



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
