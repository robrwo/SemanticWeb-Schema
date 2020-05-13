use utf8;

package SemanticWeb::Schema::School;

# ABSTRACT: A school.

use Moo;

extends qw/ SemanticWeb::Schema::EducationalOrganization /;


use MooX::JSON_LD 'School';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

A school.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOrganization>

=cut

1;
