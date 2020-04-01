use utf8;

package SemanticWeb::Schema::LymphaticVessel;

# ABSTRACT: A type of blood vessel that specifically carries lymph fluid unidirectionally toward the heart.

use Moo;

extends qw/ SemanticWeb::Schema::Vessel /;


use MooX::JSON_LD 'LymphaticVessel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

A type of blood vessel that specifically carries lymph fluid
unidirectionally toward the heart.




=head1 ATTRIBUTES


=head2 C<originates_from>

C<originatesFrom>

The vasculature the lymphatic structure originates, or afferents, from.


A originates_from should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Vessel']>

=back

=head2 C<_has_originates_from>

A predicate for the L</originates_from> attribute.

=cut

has originates_from => (
    is        => 'rw',
    predicate => '_has_originates_from',
    json_ld   => 'originatesFrom',
);


=head2 C<region_drained>

C<regionDrained>

The anatomical or organ system drained by this vessel; generally refers to
a specific part of an organ.


A region_drained should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalSystem']>

=back

=head2 C<_has_region_drained>

A predicate for the L</region_drained> attribute.

=cut

has region_drained => (
    is        => 'rw',
    predicate => '_has_region_drained',
    json_ld   => 'regionDrained',
);


=head2 C<runs_to>

C<runsTo>

The vasculature the lymphatic structure runs, or efferents, to.


A runs_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Vessel']>

=back

=head2 C<_has_runs_to>

A predicate for the L</runs_to> attribute.

=cut

has runs_to => (
    is        => 'rw',
    predicate => '_has_runs_to',
    json_ld   => 'runsTo',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Vessel>

=cut

1;
