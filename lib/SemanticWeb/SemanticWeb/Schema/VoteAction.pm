package SemanticWeb::Schema::VoteAction;

# ABSTRACT: The act of expressing a preference from a fixed/finite/structured set of choices/options.

use Moo;

extends qw/ SemanticWeb::Schema::ChooseAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of expressing a preference from a fixed/finite/structured set of
choices/options.




=head1 ATTRIBUTES


=head2 C<candidate>



A sub property of object. The candidate subject of this action.


A candidate should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has candidate => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'VoteAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'candidate' => $self->curry::_serializer('candidate'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::ChooseAction>

=cut

1;
