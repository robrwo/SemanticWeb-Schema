use utf8;

package SemanticWeb::Schema::employmentUnit;

# ABSTRACT: Indicates the department

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'employmentUnit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the department, unit and/or facility where the employee reports
and/or in which the job is to be performed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
