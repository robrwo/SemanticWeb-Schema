use utf8;

package SemanticWeb::Schema::Nerve;

# ABSTRACT: A common pathway for the electrochemical nerve impulses that are transmitted along each of the axons.

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'Nerve';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

A common pathway for the electrochemical nerve impulses that are
transmitted along each of the axons.




=head1 ATTRIBUTES


=head2 C<branch>



=begin html

The branches that delineate from the nerve bundle. Not to be confused with
<a class="localLink" href="http://schema.org/branchOf">branchOf</a>.

=end html


A branch should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=cut

has branch => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'branch',
);


=head2 C<nerve_motor>

C<nerveMotor>

The neurological pathway extension that involves muscle control.


A nerve_motor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Muscle']>

=back

=cut

has nerve_motor => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nerveMotor',
);


=head2 C<sensory_unit>

C<sensoryUnit>

The neurological pathway extension that inputs and sends information to the
brain or spinal cord.


A sensory_unit should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=item C<InstanceOf['SemanticWeb::Schema::SuperficialAnatomy']>

=back

=cut

has sensory_unit => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sensoryUnit',
);


=head2 C<sourced_from>

C<sourcedFrom>

The neurological pathway that originates the neurons.


A sourced_from should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BrainStructure']>

=back

=cut

has sourced_from => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sourcedFrom',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;
