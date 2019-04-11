use utf8;

package SemanticWeb::Schema::PayAction;

# ABSTRACT: An agent pays a price to a participant.

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'PayAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

An agent pays a price to a participant.




=head1 ATTRIBUTES


=head2 C<purpose>



A goal towards an action is taken. Can be concrete or abstract.


A purpose should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalDevicePurpose']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has purpose => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'purpose',
);


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

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
