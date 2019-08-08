use utf8;

package SemanticWeb::Schema::Substance;

# ABSTRACT: Any matter of defined composition that has discrete existence

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'Substance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

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

=cut

has active_ingredient => (
    is        => 'rw',
    predicate => 1,
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

=cut

has maximum_intake => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'maximumIntake',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
