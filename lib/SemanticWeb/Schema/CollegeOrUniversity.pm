use utf8;

package SemanticWeb::Schema::CollegeOrUniversity;

# ABSTRACT: A college

use Moo;

extends qw/ SemanticWeb::Schema::EducationalOrganization /;


use MooX::JSON_LD 'CollegeOrUniversity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.2';

=encoding utf8

=head1 DESCRIPTION

A college, university, or other third-level educational institution.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOrganization>

=cut

1;
