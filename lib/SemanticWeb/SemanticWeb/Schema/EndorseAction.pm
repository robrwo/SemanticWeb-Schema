package SemanticWeb::Schema::EndorseAction;

# ABSTRACT: An agent approves/certifies/likes/supports/sanction an object.

use Moo;

extends qw/ SemanticWeb::Schema::ReactAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An agent approves/certifies/likes/supports/sanction an object.




=head1 ATTRIBUTES


=head2 C<endorsee>



A sub property of participant. The person/organization being supported.


A endorsee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has endorsee => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EndorseAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'endorsee' => $self->curry::_serializer('endorsee'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::ReactAction>

=cut

1;
