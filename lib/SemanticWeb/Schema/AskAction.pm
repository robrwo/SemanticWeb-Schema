use utf8;

package SemanticWeb::Schema::AskAction;

# ABSTRACT: The act of posing a question / favor to someone

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'AskAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of posing a question / favor to someone.

Related actions:

=over

=item *

L<SemanticWeb::Schema::ReplyAction>: Appears generally as a response to AskAction.


=back



=head1 ATTRIBUTES


=head2 C<question>



A sub property of object. A question.


A question should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Question']>

=back

=head2 C<_has_question>

A predicate for the L</question> attribute.

=cut

has question => (
    is        => 'rw',
    predicate => '_has_question',
    json_ld   => 'question',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
