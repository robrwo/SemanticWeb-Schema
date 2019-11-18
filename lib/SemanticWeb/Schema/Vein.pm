use utf8;

package SemanticWeb::Schema::Vein;

# ABSTRACT: A type of blood vessel that specifically carries blood to the heart.

use Moo;

extends qw/ SemanticWeb::Schema::Vessel /;


use MooX::JSON_LD 'Vein';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A type of blood vessel that specifically carries blood to the heart.




=head1 ATTRIBUTES


=head2 C<drains_to>

C<drainsTo>

The vasculature that the vein drains into.


A drains_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Vessel']>

=back

=head2 C<_has_drains_to>

A predicate for the L</drains_to> attribute.

=cut

has drains_to => (
    is        => 'rw',
    predicate => '_has_drains_to',
    json_ld   => 'drainsTo',
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


=head2 C<tributary>



The anatomical or organ system that the vein flows into; a larger structure
that the vein connects to.


A tributary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=head2 C<_has_tributary>

A predicate for the L</tributary> attribute.

=cut

has tributary => (
    is        => 'rw',
    predicate => '_has_tributary',
    json_ld   => 'tributary',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Vessel>

=cut

1;
