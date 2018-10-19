use utf8;

package SemanticWeb::Schema::DonateAction;

# ABSTRACT: The act of providing goods

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'DonateAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of providing goods, services, or money without compensation, often
for philanthropic reasons.




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

=cut

has recipient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipient',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
