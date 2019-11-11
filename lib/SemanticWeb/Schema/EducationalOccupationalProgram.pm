use utf8;

package SemanticWeb::Schema::EducationalOccupationalProgram;

# ABSTRACT: A program offered by an institution which determines the learning progress to achieve an outcome

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'EducationalOccupationalProgram';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A program offered by an institution which determines the learning progress
to achieve an outcome, usually a credential like a degree or certificate.
This would define a discrete set of opportunities (e.g., job, courses) that
together constitute a program with a clear start, end, set of requirements,
and transition to a new occupational opportunity (e.g., a job), or
sometimes a higher educational opportunity (e.g., an advanced degree).




=head1 ATTRIBUTES


=head2 C<educational_credential_awarded>

C<educationalCredentialAwarded>

A description of the qualification, award, certificate, diploma or other
educational credential awarded as a consequence of successful completion of
this course or program.


A educational_credential_awarded should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=cut

has educational_credential_awarded => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'educationalCredentialAwarded',
);


=head2 C<occupational_credential_awarded>

C<occupationalCredentialAwarded>

A description of the qualification, award, certificate, diploma or other
occupational credential awarded as a consequence of successful completion
of this course or program.


A occupational_credential_awarded should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=cut

has occupational_credential_awarded => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'occupationalCredentialAwarded',
);


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offers',
);


=head2 C<program_prerequisites>

C<programPrerequisites>

Prerequisites for enrolling in the program.


A program_prerequisites should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AlignmentObject']>

=item C<InstanceOf['SemanticWeb::Schema::Course']>

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=cut

has program_prerequisites => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'programPrerequisites',
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
);


=head2 C<salary_upon_completion>

C<salaryUponCompletion>

The expected salary upon completing the training.


A salary_upon_completion should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmountDistribution']>

=back

=cut

has salary_upon_completion => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'salaryUponCompletion',
);


=head2 C<time_to_complete>

C<timeToComplete>

The expected length of time to complete the program if attending full-time.


A time_to_complete should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has time_to_complete => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'timeToComplete',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
