use utf8;

package SemanticWeb::Schema::JobPosting;

# ABSTRACT: A listing that describes a job opening in a certain organization.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'JobPosting';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A listing that describes a job opening in a certain organization.




=head1 ATTRIBUTES


=head2 C<applicant_location_requirements>

C<applicantLocationRequirements>

The location(s) applicants can apply from. This is usually used for
telecommuting jobs where the applicant does not need to be in a physical
office. Note: This should not be used for citizenship or work visa
requirements.


A applicant_location_requirements should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=head2 C<_has_applicant_location_requirements>

A predicate for the L</applicant_location_requirements> attribute.

=cut

has applicant_location_requirements => (
    is        => 'rw',
    predicate => '_has_applicant_location_requirements',
    json_ld   => 'applicantLocationRequirements',
);


=head2 C<application_contact>

C<applicationContact>

Contact details for further information relevant to this job posting.


A application_contact should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=head2 C<_has_application_contact>

A predicate for the L</application_contact> attribute.

=cut

has application_contact => (
    is        => 'rw',
    predicate => '_has_application_contact',
    json_ld   => 'applicationContact',
);


=head2 C<base_salary>

C<baseSalary>

The base salary of the job or of an employee in an EmployeeRole.


A base_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<Num>

=back

=head2 C<_has_base_salary>

A predicate for the L</base_salary> attribute.

=cut

has base_salary => (
    is        => 'rw',
    predicate => '_has_base_salary',
    json_ld   => 'baseSalary',
);


=head2 C<benefits>



Description of benefits associated with the job.


A benefits should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_benefits>

A predicate for the L</benefits> attribute.

=cut

has benefits => (
    is        => 'rw',
    predicate => '_has_benefits',
    json_ld   => 'benefits',
);


=head2 C<date_posted>

C<datePosted>

Publication date of an online listing.


A date_posted should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_date_posted>

A predicate for the L</date_posted> attribute.

=cut

has date_posted => (
    is        => 'rw',
    predicate => '_has_date_posted',
    json_ld   => 'datePosted',
);


=head2 C<direct_apply>

C<directApply>

Indicates whether an [[url]] that is associated with a L<SemanticWeb::Schema::JobPosting> enables direct application for the job, via the posting website. A job posting is considered to have directApply of L<SemanticWeb::Schema::True> if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of L<SemanticWeb::Schema::False> is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied.

A direct_apply should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_direct_apply>

A predicate for the L</direct_apply> attribute.

=cut

has direct_apply => (
    is        => 'rw',
    predicate => '_has_direct_apply',
    json_ld   => 'directApply',
);


=head2 C<education_requirements>

C<educationRequirements>

Educational background needed for the position or Occupation.


A education_requirements should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=head2 C<_has_education_requirements>

A predicate for the L</education_requirements> attribute.

=cut

has education_requirements => (
    is        => 'rw',
    predicate => '_has_education_requirements',
    json_ld   => 'educationRequirements',
);


=head2 C<eligibility_to_work_requirement>

C<eligibilityToWorkRequirement>

The legal requirements such as citizenship, visa and other documentation
required for an applicant to this job.


A eligibility_to_work_requirement should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_eligibility_to_work_requirement>

A predicate for the L</eligibility_to_work_requirement> attribute.

=cut

has eligibility_to_work_requirement => (
    is        => 'rw',
    predicate => '_has_eligibility_to_work_requirement',
    json_ld   => 'eligibilityToWorkRequirement',
);


=head2 C<employer_overview>

C<employerOverview>

A description of the employer, career opportunities and work environment
for this position.


A employer_overview should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_employer_overview>

A predicate for the L</employer_overview> attribute.

=cut

has employer_overview => (
    is        => 'rw',
    predicate => '_has_employer_overview',
    json_ld   => 'employerOverview',
);


=head2 C<employment_type>

C<employmentType>

Type of employment (e.g. full-time, part-time, contract, temporary,
seasonal, internship).


A employment_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_employment_type>

A predicate for the L</employment_type> attribute.

=cut

has employment_type => (
    is        => 'rw',
    predicate => '_has_employment_type',
    json_ld   => 'employmentType',
);


=head2 C<employment_unit>

C<employmentUnit>

Indicates the department, unit and/or facility where the employee reports
and/or in which the job is to be performed.


A employment_unit should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_employment_unit>

A predicate for the L</employment_unit> attribute.

=cut

has employment_unit => (
    is        => 'rw',
    predicate => '_has_employment_unit',
    json_ld   => 'employmentUnit',
);


=head2 C<estimated_salary>

C<estimatedSalary>

An estimated salary for a job posting or occupation, based on a variety of
variables including, but not limited to industry, job title, and location.
Estimated salaries are often computed by outside organizations rather than
the hiring organization, who may not have committed to the estimated value.


A estimated_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmountDistribution']>

=item C<Num>

=back

=head2 C<_has_estimated_salary>

A predicate for the L</estimated_salary> attribute.

=cut

has estimated_salary => (
    is        => 'rw',
    predicate => '_has_estimated_salary',
    json_ld   => 'estimatedSalary',
);


=head2 C<experience_in_place_of_education>

C<experienceInPlaceOfEducation>

Indicates whether a L<SemanticWeb::Schema::JobPosting> will accept experience (as indicated by L<SemanticWeb::Schema::OccupationalExperienceRequirements>) in place of its formal educational qualifications (as indicated by [[educationRequirements]]). If true, indicates that satisfying one of these requirements is sufficient.

A experience_in_place_of_education should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_experience_in_place_of_education>

A predicate for the L</experience_in_place_of_education> attribute.

=cut

has experience_in_place_of_education => (
    is        => 'rw',
    predicate => '_has_experience_in_place_of_education',
    json_ld   => 'experienceInPlaceOfEducation',
);


=head2 C<experience_requirements>

C<experienceRequirements>

Description of skills and experience needed for the position or Occupation.


A experience_requirements should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OccupationalExperienceRequirements']>

=item C<Str>

=back

=head2 C<_has_experience_requirements>

A predicate for the L</experience_requirements> attribute.

=cut

has experience_requirements => (
    is        => 'rw',
    predicate => '_has_experience_requirements',
    json_ld   => 'experienceRequirements',
);


=head2 C<hiring_organization>

C<hiringOrganization>

Organization or Person offering the job position.


A hiring_organization should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_hiring_organization>

A predicate for the L</hiring_organization> attribute.

=cut

has hiring_organization => (
    is        => 'rw',
    predicate => '_has_hiring_organization',
    json_ld   => 'hiringOrganization',
);


=head2 C<incentive_compensation>

C<incentiveCompensation>

Description of bonus and commission compensation aspects of the job.


A incentive_compensation should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_incentive_compensation>

A predicate for the L</incentive_compensation> attribute.

=cut

has incentive_compensation => (
    is        => 'rw',
    predicate => '_has_incentive_compensation',
    json_ld   => 'incentiveCompensation',
);


=head2 C<incentives>



Description of bonus and commission compensation aspects of the job.


A incentives should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_incentives>

A predicate for the L</incentives> attribute.

=cut

has incentives => (
    is        => 'rw',
    predicate => '_has_incentives',
    json_ld   => 'incentives',
);


=head2 C<industry>



The industry associated with the job position.


A industry should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_industry>

A predicate for the L</industry> attribute.

=cut

has industry => (
    is        => 'rw',
    predicate => '_has_industry',
    json_ld   => 'industry',
);


=head2 C<job_benefits>

C<jobBenefits>

Description of benefits associated with the job.


A job_benefits should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_job_benefits>

A predicate for the L</job_benefits> attribute.

=cut

has job_benefits => (
    is        => 'rw',
    predicate => '_has_job_benefits',
    json_ld   => 'jobBenefits',
);


=head2 C<job_immediate_start>

C<jobImmediateStart>

An indicator as to whether a position is available for an immediate start.


A job_immediate_start should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_job_immediate_start>

A predicate for the L</job_immediate_start> attribute.

=cut

has job_immediate_start => (
    is        => 'rw',
    predicate => '_has_job_immediate_start',
    json_ld   => 'jobImmediateStart',
);


=head2 C<job_location>

C<jobLocation>

A (typically single) geographic location associated with the job position.


A job_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_job_location>

A predicate for the L</job_location> attribute.

=cut

has job_location => (
    is        => 'rw',
    predicate => '_has_job_location',
    json_ld   => 'jobLocation',
);


=head2 C<job_location_type>

C<jobLocationType>

A description of the job location (e.g. TELECOMMUTE for telecommute jobs).


A job_location_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_job_location_type>

A predicate for the L</job_location_type> attribute.

=cut

has job_location_type => (
    is        => 'rw',
    predicate => '_has_job_location_type',
    json_ld   => 'jobLocationType',
);


=head2 C<job_start_date>

C<jobStartDate>

The date on which a successful applicant for this job would be expected to
start work. Choose a specific date in the future or use the
jobImmediateStart property to indicate the position is to be filled as soon
as possible.


A job_start_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_job_start_date>

A predicate for the L</job_start_date> attribute.

=cut

has job_start_date => (
    is        => 'rw',
    predicate => '_has_job_start_date',
    json_ld   => 'jobStartDate',
);


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


=head2 C<physical_requirement>

C<physicalRequirement>

A description of the types of physical activity associated with the job.
Defined terms such as those in O*net may be used, but note that there is no
way to specify the level of ability as well as its nature when using a
defined term.


A physical_requirement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_physical_requirement>

A predicate for the L</physical_requirement> attribute.

=cut

has physical_requirement => (
    is        => 'rw',
    predicate => '_has_physical_requirement',
    json_ld   => 'physicalRequirement',
);


=head2 C<qualifications>



Specific qualifications required for this role or Occupation.


A qualifications should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=head2 C<_has_qualifications>

A predicate for the L</qualifications> attribute.

=cut

has qualifications => (
    is        => 'rw',
    predicate => '_has_qualifications',
    json_ld   => 'qualifications',
);


=head2 C<relevant_occupation>

C<relevantOccupation>

The Occupation for the JobPosting.


A relevant_occupation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Occupation']>

=back

=head2 C<_has_relevant_occupation>

A predicate for the L</relevant_occupation> attribute.

=cut

has relevant_occupation => (
    is        => 'rw',
    predicate => '_has_relevant_occupation',
    json_ld   => 'relevantOccupation',
);


=head2 C<responsibilities>



Responsibilities associated with this role or Occupation.


A responsibilities should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_responsibilities>

A predicate for the L</responsibilities> attribute.

=cut

has responsibilities => (
    is        => 'rw',
    predicate => '_has_responsibilities',
    json_ld   => 'responsibilities',
);


=head2 C<salary_currency>

C<salaryCurrency>

The currency (coded using [ISO
4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary
information in this job posting or for this employee.


A salary_currency should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_salary_currency>

A predicate for the L</salary_currency> attribute.

=cut

has salary_currency => (
    is        => 'rw',
    predicate => '_has_salary_currency',
    json_ld   => 'salaryCurrency',
);


=head2 C<security_clearance_requirement>

C<securityClearanceRequirement>

A description of any security clearance requirements of the job.


A security_clearance_requirement should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_security_clearance_requirement>

A predicate for the L</security_clearance_requirement> attribute.

=cut

has security_clearance_requirement => (
    is        => 'rw',
    predicate => '_has_security_clearance_requirement',
    json_ld   => 'securityClearanceRequirement',
);


=head2 C<sensory_requirement>

C<sensoryRequirement>

A description of any sensory requirements and levels necessary to function
on the job, including hearing and vision. Defined terms such as those in
O*net may be used, but note that there is no way to specify the level of
ability as well as its nature when using a defined term.


A sensory_requirement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_sensory_requirement>

A predicate for the L</sensory_requirement> attribute.

=cut

has sensory_requirement => (
    is        => 'rw',
    predicate => '_has_sensory_requirement',
    json_ld   => 'sensoryRequirement',
);


=head2 C<skills>



A statement of knowledge, skill, ability, task or any other assertion
expressing a competency that is desired or required to fulfill this role or
to work in this occupation.


A skills should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_skills>

A predicate for the L</skills> attribute.

=cut

has skills => (
    is        => 'rw',
    predicate => '_has_skills',
    json_ld   => 'skills',
);


=head2 C<special_commitments>

C<specialCommitments>

Any special commitments associated with this job posting. Valid entries
include VeteranCommit, MilitarySpouseCommit, etc.


A special_commitments should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_special_commitments>

A predicate for the L</special_commitments> attribute.

=cut

has special_commitments => (
    is        => 'rw',
    predicate => '_has_special_commitments',
    json_ld   => 'specialCommitments',
);


=head2 C<title>



The title of the job.


A title should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_title>

A predicate for the L</title> attribute.

=cut

has title => (
    is        => 'rw',
    predicate => '_has_title',
    json_ld   => 'title',
);


=head2 C<total_job_openings>

C<totalJobOpenings>

The number of positions open for this job posting. Use a positive integer.
Do not use if the number of positions is unclear or not known.


A total_job_openings should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_total_job_openings>

A predicate for the L</total_job_openings> attribute.

=cut

has total_job_openings => (
    is        => 'rw',
    predicate => '_has_total_job_openings',
    json_ld   => 'totalJobOpenings',
);


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_through>

A predicate for the L</valid_through> attribute.

=cut

has valid_through => (
    is        => 'rw',
    predicate => '_has_valid_through',
    json_ld   => 'validThrough',
);


=head2 C<work_hours>

C<workHours>

The typical working hours for this job (e.g. 1st shift, night shift,
8am-5pm).


A work_hours should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_work_hours>

A predicate for the L</work_hours> attribute.

=cut

has work_hours => (
    is        => 'rw',
    predicate => '_has_work_hours',
    json_ld   => 'workHours',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
