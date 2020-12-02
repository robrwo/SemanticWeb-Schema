use utf8;

package SemanticWeb::Schema::ChooseAction;

# ABSTRACT: The act of expressing a preference from a set of options or a large or unbounded set of choices/options.

use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use MooX::JSON_LD 'ChooseAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of expressing a preference from a set of options or a large or
unbounded set of choices/options.




=head1 ATTRIBUTES


=head2 C<action_option>

C<actionOption>

A sub property of object. The options subject to this action.


A action_option should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_action_option>

A predicate for the L</action_option> attribute.

=cut

has action_option => (
    is        => 'rw',
    predicate => '_has_action_option',
    json_ld   => 'actionOption',
);


=head2 C<option>



A sub property of object. The options subject to this action.


A option should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_option>

A predicate for the L</option> attribute.

=cut

has option => (
    is        => 'rw',
    predicate => '_has_option',
    json_ld   => 'option',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
