package SemanticWeb::Schema::LendAction;

# ABSTRACT: <p>The act of providing an object under an agreement that it will be returned at a later date

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


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

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has borrower => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'borrower',
    json_ld_serializer => \&_serialize_borrower,
);

sub _serialize_borrower { $_[0]->_serializer('borrower') }




around json_ld_type => sub { return 'LendAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'borrower' => \&_serialize_borrower,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
