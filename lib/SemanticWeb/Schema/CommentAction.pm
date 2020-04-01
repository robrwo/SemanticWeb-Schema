use utf8;

package SemanticWeb::Schema::CommentAction;

# ABSTRACT: The act of generating a comment about a subject.

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'CommentAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

The act of generating a comment about a subject.




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
