use utf8;

package SemanticWeb::Schema::ResearchProject;

# ABSTRACT: A Research project.

use Moo;

extends qw/ SemanticWeb::Schema::Project /;


use MooX::JSON_LD 'ResearchProject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

A Research project.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Project>

=cut

1;
