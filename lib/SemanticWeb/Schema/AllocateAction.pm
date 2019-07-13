use utf8;

package SemanticWeb::Schema::AllocateAction;

# ABSTRACT: The act of organizing tasks/objects/events by associating resources to it.

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use MooX::JSON_LD 'AllocateAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

The act of organizing tasks/objects/events by associating resources to it.




=head1 ATTRIBUTES


=head2 C<purpose>



A goal towards an action is taken. Can be concrete or abstract.


A purpose should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalDevicePurpose']>

=back

=cut

has purpose => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'purpose',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
