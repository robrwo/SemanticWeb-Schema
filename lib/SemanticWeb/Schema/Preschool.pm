use utf8;

package SemanticWeb::Schema::Preschool;

# ABSTRACT: A preschool.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::EducationalOrganization /;


use MooX::JSON_LD 'Preschool';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A preschool.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOrganization>

=cut

1;
