use utf8;

package SemanticWeb::Schema::ReplyAction;

# ABSTRACT: The act of responding to a question/message asked/sent by the object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'ReplyAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of responding to a question/message asked/sent by the object. Related to L<SemanticWeb::Schema::AskAction>.

Related actions:

=over

=item *

L<SemanticWeb::Schema::AskAction>: Appears generally as an origin of a ReplyAction.


=back



=head1 ATTRIBUTES


=head2 C<result_comment>

C<resultComment>

A sub property of result. The Comment created or sent as a result of this
action.


A result_comment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=head2 C<_has_result_comment>

A predicate for the L</result_comment> attribute.

=cut

has result_comment => (
    is        => 'rw',
    predicate => '_has_result_comment',
    json_ld   => 'resultComment',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
