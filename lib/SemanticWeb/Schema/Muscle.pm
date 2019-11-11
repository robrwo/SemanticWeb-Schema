use utf8;

package SemanticWeb::Schema::Muscle;

# ABSTRACT: A muscle is an anatomical structure consisting of a contractile form of tissue that animals use to effect movement.

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'Muscle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

A muscle is an anatomical structure consisting of a contractile form of
tissue that animals use to effect movement.




=head1 ATTRIBUTES


=head2 C<action>



=begin html

<p>Obsolete term for <a class="localLink"
href="http://schema.org/muscleAction">muscleAction</a>. Not to be confused
with <a class="localLink"
href="http://schema.org/potentialAction">potentialAction</a>.<p>

=end html


A action should be one of the following types:

=over

=item C<Str>

=back

=cut

has action => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'action',
);


=head2 C<antagonist>



The muscle whose action counteracts the specified muscle.


A antagonist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Muscle']>

=back

=cut

has antagonist => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'antagonist',
);


=head2 C<blood_supply>

C<bloodSupply>

The blood vessel that carries blood from the heart to the muscle.


A blood_supply should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Vessel']>

=back

=cut

has blood_supply => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bloodSupply',
);


=head2 C<insertion>



The place of attachment of a muscle, or what the muscle moves.


A insertion should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=cut

has insertion => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'insertion',
);


=head2 C<muscle_action>

C<muscleAction>

The movement the muscle generates.


A muscle_action should be one of the following types:

=over

=item C<Str>

=back

=cut

has muscle_action => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'muscleAction',
);


=head2 C<nerve>



The underlying innervation associated with the muscle.


A nerve should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Nerve']>

=back

=cut

has nerve => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nerve',
);


=head2 C<origin>



The place or point where a muscle arises.


A origin should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=cut

has origin => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'origin',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;
