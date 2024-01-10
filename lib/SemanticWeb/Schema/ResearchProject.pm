use utf8;

package SemanticWeb::Schema::ResearchProject;

# ABSTRACT: A Research project.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Project /;


use MooX::JSON_LD 'ResearchProject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A Research project.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Project>

=cut

1;
