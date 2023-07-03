use utf8;

package SemanticWeb::Schema::Substance;

# ABSTRACT: Any matter of defined composition that has discrete existence

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'Substance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Any matter of defined composition that has discrete existence, whose origin
may be biological, mineral or chemical.




=head1 ATTRIBUTES


=head2 C<active_ingredient>

C<activeIngredient>

An active ingredient, typically chemical compounds and/or biologic
substances.


A active_ingredient should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_active_ingredient>

A predicate for the L</active_ingredient> attribute.

=cut

has active_ingredient => (
    is        => 'rw',
    predicate => '_has_active_ingredient',
    json_ld   => 'activeIngredient',
);


=head2 C<maximum_intake>

C<maximumIntake>

Recommended intake of this supplement for a given population as defined by
a specific recommending authority.


A maximum_intake should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MaximumDoseSchedule']>

=back

=head2 C<_has_maximum_intake>

A predicate for the L</maximum_intake> attribute.

=cut

has maximum_intake => (
    is        => 'rw',
    predicate => '_has_maximum_intake',
    json_ld   => 'maximumIntake',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
