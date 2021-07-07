use utf8;

package SemanticWeb::Schema::ResearchOrganization;

# ABSTRACT: A Research Organization (e

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'ResearchOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A Research Organization (e.g. scientific institute, research company).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
