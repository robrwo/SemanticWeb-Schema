package SemanticWeb::Schema::BorrowAction;

# ABSTRACT: <p>The act of obtaining an object under an agreement to return it at a later date

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of obtaining an object under an agreement to return it at a
later date. Reciprocal of LendAction.</p> <p>Related actions:</p> <ul>
<li><a class="localLink"
href="http://schema.org/LendAction">LendAction</a>: Reciprocal of
BorrowAction.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<lender>



A sub property of participant. The person that lends the object being
borrowed.


A lender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has lender => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BorrowAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'lender' => $self->curry::_serializer('lender'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
