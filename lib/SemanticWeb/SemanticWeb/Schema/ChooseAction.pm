package SemanticWeb::Schema::ChooseAction;

# ABSTRACT: The act of expressing a preference from a set of options or a large or unbounded set of choices/options.

use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use curry;
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
);


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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ChooseAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'actionOption' => $self->curry::_serializer('action_option'),
       'option' => $self->curry::_serializer('option'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
