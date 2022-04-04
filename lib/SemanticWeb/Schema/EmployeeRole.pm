use utf8;

package SemanticWeb::Schema::EmployeeRole;

# ABSTRACT: A subclass of OrganizationRole used to describe employee relationships.

use Moo;

extends qw/ SemanticWeb::Schema::OrganizationRole /;


use MooX::JSON_LD 'EmployeeRole';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A subclass of OrganizationRole used to describe employee relationships.




=head1 ATTRIBUTES


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


=head2 C<salary_currency>

C<salaryCurrency>

The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)
) used for the main salary information in this job posting or for this
employee.


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




=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizationRole>

=cut

1;
