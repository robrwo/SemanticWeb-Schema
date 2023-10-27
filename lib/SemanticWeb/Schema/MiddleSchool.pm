use utf8;

package SemanticWeb::Schema::MiddleSchool;

# ABSTRACT: A middle school (typically for children aged around 11-14

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::EducationalOrganization /;


use MooX::JSON_LD 'MiddleSchool';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A middle school (typically for children aged around 11-14, although this
varies somewhat).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOrganization>

=cut

1;
