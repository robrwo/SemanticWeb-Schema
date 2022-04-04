use utf8;

package SemanticWeb::Schema::OccupationalExperienceRequirements;

# ABSTRACT: Indicates employment-related experience requirements

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'OccupationalExperienceRequirements';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

Indicates employment-related experience requirements, e.g. [[monthsOfExperience]].



=head1 ATTRIBUTES


=head2 C<months_of_experience>

C<monthsOfExperience>

Indicates the minimal number of months of experience required for a
position.


A months_of_experience should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_months_of_experience>

A predicate for the L</months_of_experience> attribute.

=cut

has months_of_experience => (
    is        => 'rw',
    predicate => '_has_months_of_experience',
    json_ld   => 'monthsOfExperience',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
