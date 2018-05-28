package LDF::Schema::LendAction;

# ABSTRACT: <p>The act of providing an object under an agreement that it will be returned at a later date

use Moo;

extends qw/ LDF::Schema::TransferAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of providing an object under an agreement that it will be
returned at a later date. Reciprocal of BorrowAction.</p> <p>Related
actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/BorrowAction">BorrowAction</a>: Reciprocal of
LendAction.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<borrower>



A sub property of participant. The person that borrows the object being
lent.


A borrower should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has borrower => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LendAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'borrower' => $self->curry::_serializer('borrower'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::TransferAction>

=cut

1;
