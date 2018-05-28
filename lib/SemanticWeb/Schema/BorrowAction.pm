package SemanticWeb::Schema::BorrowAction;

# ABSTRACT: <p>The act of obtaining an object under an agreement to return it at a later date

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'BorrowAction';
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
    json_ld   => 'lender',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
