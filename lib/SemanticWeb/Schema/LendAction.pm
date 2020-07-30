use utf8;

package SemanticWeb::Schema::LendAction;

# ABSTRACT: The act of providing an object under an agreement that it will be returned at a later date

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'LendAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The act of providing an object under an agreement that it will be
returned at a later date. Reciprocal of BorrowAction.<br/><br/> Related
actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/BorrowAction">BorrowAction</a>: Reciprocal of
LendAction.</li> </ul> <p>

=end html




=head1 ATTRIBUTES


=head2 C<borrower>



A sub property of participant. The person that borrows the object being
lent.


A borrower should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_borrower>

A predicate for the L</borrower> attribute.

=cut

has borrower => (
    is        => 'rw',
    predicate => '_has_borrower',
    json_ld   => 'borrower',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
