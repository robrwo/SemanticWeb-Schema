package SemanticWeb::Schema::JobPosting;

# ABSTRACT: A listing that describes a job opening in a certain organization.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'JobPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A listing that describes a job opening in a certain organization.




=head1 ATTRIBUTES


=head2 C<base_salary>

C<baseSalary>

The base salary of the job or of an employee in an EmployeeRole.


A base_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=cut

has base_salary => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'baseSalary',
    json_ld_serializer => \&_serialize_base_salary,
);

sub _serialize_base_salary { $_[0]->_serializer('base_salary') }


=head2 C<benefits>



Description of benefits associated with the job.


A benefits should be one of the following types:

=over

=item C<Str>

=back

=cut

has benefits => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'benefits',
    json_ld_serializer => \&_serialize_benefits,
);

sub _serialize_benefits { $_[0]->_serializer('benefits') }


=head2 C<date_posted>

C<datePosted>

Publication date for the job posting.


A date_posted should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_posted => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'datePosted',
    json_ld_serializer => \&_serialize_date_posted,
);

sub _serialize_date_posted { $_[0]->_serializer('date_posted') }


=head2 C<education_requirements>

C<educationRequirements>

Educational background needed for the position.


A education_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has education_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'educationRequirements',
    json_ld_serializer => \&_serialize_education_requirements,
);

sub _serialize_education_requirements { $_[0]->_serializer('education_requirements') }


=head2 C<employment_type>

C<employmentType>

Type of employment (e.g. full-time, part-time, contract, temporary,
seasonal, internship).


A employment_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has employment_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'employmentType',
    json_ld_serializer => \&_serialize_employment_type,
);

sub _serialize_employment_type { $_[0]->_serializer('employment_type') }


=head2 C<experience_requirements>

C<experienceRequirements>

Description of skills and experience needed for the position.


A experience_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has experience_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'experienceRequirements',
    json_ld_serializer => \&_serialize_experience_requirements,
);

sub _serialize_experience_requirements { $_[0]->_serializer('experience_requirements') }


=head2 C<hiring_organization>

C<hiringOrganization>

Organization offering the job position.


A hiring_organization should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has hiring_organization => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hiringOrganization',
    json_ld_serializer => \&_serialize_hiring_organization,
);

sub _serialize_hiring_organization { $_[0]->_serializer('hiring_organization') }


=head2 C<incentive_compensation>

C<incentiveCompensation>

Description of bonus and commission compensation aspects of the job.


A incentive_compensation should be one of the following types:

=over

=item C<Str>

=back

=cut

has incentive_compensation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'incentiveCompensation',
    json_ld_serializer => \&_serialize_incentive_compensation,
);

sub _serialize_incentive_compensation { $_[0]->_serializer('incentive_compensation') }


=head2 C<incentives>



Description of bonus and commission compensation aspects of the job.


A incentives should be one of the following types:

=over

=item C<Str>

=back

=cut

has incentives => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'incentives',
    json_ld_serializer => \&_serialize_incentives,
);

sub _serialize_incentives { $_[0]->_serializer('incentives') }


=head2 C<industry>



The industry associated with the job position.


A industry should be one of the following types:

=over

=item C<Str>

=back

=cut

has industry => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'industry',
    json_ld_serializer => \&_serialize_industry,
);

sub _serialize_industry { $_[0]->_serializer('industry') }


=head2 C<job_benefits>

C<jobBenefits>

Description of benefits associated with the job.


A job_benefits should be one of the following types:

=over

=item C<Str>

=back

=cut

has job_benefits => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'jobBenefits',
    json_ld_serializer => \&_serialize_job_benefits,
);

sub _serialize_job_benefits { $_[0]->_serializer('job_benefits') }


=head2 C<job_location>

C<jobLocation>

A (typically single) geographic location associated with the job position.


A job_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has job_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'jobLocation',
    json_ld_serializer => \&_serialize_job_location,
);

sub _serialize_job_location { $_[0]->_serializer('job_location') }


=head2 C<occupational_category>

C<occupationalCategory>

Category or categories describing the job. Use BLS O*NET-SOC taxonomy:
http://www.onetcenter.org/taxonomy.html. Ideally includes textual label and
formal code, with the property repeated for each applicable value.


A occupational_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has occupational_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'occupationalCategory',
    json_ld_serializer => \&_serialize_occupational_category,
);

sub _serialize_occupational_category { $_[0]->_serializer('occupational_category') }


=head2 C<qualifications>



Specific qualifications required for this role.


A qualifications should be one of the following types:

=over

=item C<Str>

=back

=cut

has qualifications => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'qualifications',
    json_ld_serializer => \&_serialize_qualifications,
);

sub _serialize_qualifications { $_[0]->_serializer('qualifications') }


=head2 C<responsibilities>



Responsibilities associated with this role.


A responsibilities should be one of the following types:

=over

=item C<Str>

=back

=cut

has responsibilities => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'responsibilities',
    json_ld_serializer => \&_serialize_responsibilities,
);

sub _serialize_responsibilities { $_[0]->_serializer('responsibilities') }


=head2 C<salary_currency>

C<salaryCurrency>

=begin html

The currency (coded using <a
href="http://en.wikipedia.org/wiki/ISO_4217">ISO 4217</a> ) used for the
main salary information in this job posting or for this employee.

=end html


A salary_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has salary_currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'salaryCurrency',
    json_ld_serializer => \&_serialize_salary_currency,
);

sub _serialize_salary_currency { $_[0]->_serializer('salary_currency') }


=head2 C<skills>



Skills required to fulfill this role.


A skills should be one of the following types:

=over

=item C<Str>

=back

=cut

has skills => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'skills',
    json_ld_serializer => \&_serialize_skills,
);

sub _serialize_skills { $_[0]->_serializer('skills') }


=head2 C<special_commitments>

C<specialCommitments>

Any special commitments associated with this job posting. Valid entries
include VeteranCommit, MilitarySpouseCommit, etc.


A special_commitments should be one of the following types:

=over

=item C<Str>

=back

=cut

has special_commitments => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'specialCommitments',
    json_ld_serializer => \&_serialize_special_commitments,
);

sub _serialize_special_commitments { $_[0]->_serializer('special_commitments') }


=head2 C<title>



The title of the job.


A title should be one of the following types:

=over

=item C<Str>

=back

=cut

has title => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'title',
    json_ld_serializer => \&_serialize_title,
);

sub _serialize_title { $_[0]->_serializer('title') }


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_through => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validThrough',
    json_ld_serializer => \&_serialize_valid_through,
);

sub _serialize_valid_through { $_[0]->_serializer('valid_through') }


=head2 C<work_hours>

C<workHours>

The typical working hours for this job (e.g. 1st shift, night shift,
8am-5pm).


A work_hours should be one of the following types:

=over

=item C<Str>

=back

=cut

has work_hours => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'workHours',
    json_ld_serializer => \&_serialize_work_hours,
);

sub _serialize_work_hours { $_[0]->_serializer('work_hours') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
