use utf8;

package SemanticWeb::Schema::WorkBasedProgram;

# ABSTRACT: A program with both an educational and employment component

use Moo;

extends qw/ SemanticWeb::Schema::EducationalOccupationalProgram /;


use MooX::JSON_LD 'WorkBasedProgram';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

A program with both an educational and employment component. Typically
based at a workplace and structured around work-based learning, with the
aim of instilling competencies related to an occupation. WorkBasedProgram
is used to distinguish programs such as apprenticeships from school,
college or other classroom based educational programs.




=head1 ATTRIBUTES


=head2 C<occupational_category>

C<occupationalCategory>

A category describing the job, preferably using a term from a taxonomy such
as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html),
[ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or
similar, with the property repeated for each applicable value. Ideally the
taxonomy should be identified, and both the textual label and formal code
for the category should be provided. Note: for historical reasons, any
textual label and formal code provided as a literal may be assumed to be
from O*NET-SOC.


A occupational_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCode']>

=item C<Str>

=back

=head2 C<_has_occupational_category>

A predicate for the L</occupational_category> attribute.

=cut

has occupational_category => (
    is        => 'rw',
    predicate => '_has_occupational_category',
    json_ld   => 'occupationalCategory',
);


=head2 C<training_salary>

C<trainingSalary>

The estimated salary earned while in the program.


A training_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmountDistribution']>

=back

=head2 C<_has_training_salary>

A predicate for the L</training_salary> attribute.

=cut

has training_salary => (
    is        => 'rw',
    predicate => '_has_training_salary',
    json_ld   => 'trainingSalary',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOccupationalProgram>

=cut

1;
