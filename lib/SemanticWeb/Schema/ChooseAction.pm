package SemanticWeb::Schema::ChooseAction;

# ABSTRACT: The act of expressing a preference from a set of options or a large or unbounded set of choices/options.

use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use MooX::JSON_LD 'ChooseAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of expressing a preference from a set of options or a large or
unbounded set of choices/options.




=head1 ATTRIBUTES


=head2 C<action_option>

C<actionOption>

A sub property of object. The options subject to this action.


A action_option should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has action_option => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actionOption',
    json_ld_serializer => \&_serialize_action_option,
);

sub _serialize_action_option { $_[0]->_serializer('action_option') }


=head2 C<option>



A sub property of object. The options subject to this action.


A option should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has option => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'option',
    json_ld_serializer => \&_serialize_option,
);

sub _serialize_option { $_[0]->_serializer('option') }




=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
