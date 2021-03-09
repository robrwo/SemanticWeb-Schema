use utf8;

package SemanticWeb::Schema::BorrowAction;

# ABSTRACT: The act of obtaining an object under an agreement to return it at a later date

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'BorrowAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of obtaining an object under an agreement to return it at a later date. Reciprocal of LendAction.

Related actions:

=over

=item *

L<SemanticWeb::Schema::LendAction>: Reciprocal of BorrowAction.


=back



=head1 ATTRIBUTES


=head2 C<lender>



A sub property of participant. The person that lends the object being
borrowed.


A lender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_lender>

A predicate for the L</lender> attribute.

=cut

has lender => (
    is        => 'rw',
    predicate => '_has_lender',
    json_ld   => 'lender',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
