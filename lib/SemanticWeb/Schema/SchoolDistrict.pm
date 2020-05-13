use utf8;

package SemanticWeb::Schema::SchoolDistrict;

# ABSTRACT: A School District is an administrative area for the administration of schools.

use Moo;

extends qw/ SemanticWeb::Schema::AdministrativeArea /;


use MooX::JSON_LD 'SchoolDistrict';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

A School District is an administrative area for the administration of
schools.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AdministrativeArea>

=cut

1;
