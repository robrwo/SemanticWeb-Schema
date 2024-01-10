use utf8;

package SemanticWeb::Schema::baseSalary;

# ABSTRACT: The base salary of the job or of an employee in an EmployeeRole.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'baseSalary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The base salary of the job or of an employee in an EmployeeRole.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
