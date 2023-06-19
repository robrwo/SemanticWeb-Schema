use utf8;

package SemanticWeb::Schema::GiveAction;

# ABSTRACT: The act of transferring ownership of an object to a destination

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'GiveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of transferring ownership of an object to a destination. Reciprocal of TakeAction.

Related actions:

=over

=item *

L<SemanticWeb::Schema::TakeAction>: Reciprocal of GiveAction.


=item *

L<SemanticWeb::Schema::SendAction>: Unlike SendAction, GiveAction implies that ownership is being transferred (e.g. I may send my laptop to you, but that doesn't mean I'm giving it to you).


=back



=head1 ATTRIBUTES


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_recipient>

A predicate for the L</recipient> attribute.

=cut

has recipient => (
    is        => 'rw',
    predicate => '_has_recipient',
    json_ld   => 'recipient',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
