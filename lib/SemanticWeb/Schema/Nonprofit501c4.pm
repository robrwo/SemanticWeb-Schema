use utf8;

package SemanticWeb::Schema::Nonprofit501c4;

# ABSTRACT: Nonprofit501c4: Non-profit type referring to Civic Leagues

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c4';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c4: Non-profit type referring to Civic Leagues, Social Welfare
Organizations, and Local Associations of Employees.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
