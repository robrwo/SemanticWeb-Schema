use utf8;

package SemanticWeb::Schema::estimatedSalary;

# ABSTRACT: An estimated salary for a job posting or occupation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'estimatedSalary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An estimated salary for a job posting or occupation, based on a variety of
variables including, but not limited to industry, job title, and location.
Estimated salaries are often computed by outside organizations rather than
the hiring organization, who may not have committed to the estimated value.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
