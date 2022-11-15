use utf8;

package SemanticWeb::Schema::TipAction;

# ABSTRACT: The act of giving money voluntarily to a beneficiary in recognition of services rendered.

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'TipAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of giving money voluntarily to a beneficiary in recognition of
services rendered.




=head1 ATTRIBUTES


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_recipient>

A predicate for the L</recipient> attribute.

=cut

has recipient => (
    is        => 'rw',
    predicate => '_has_recipient',
    json_ld   => 'recipient',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
