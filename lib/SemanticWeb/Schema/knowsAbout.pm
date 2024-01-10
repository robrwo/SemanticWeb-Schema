use utf8;

package SemanticWeb::Schema::knowsAbout;

# ABSTRACT: Of a [[Person]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'knowsAbout';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Of a L<SemanticWeb::Schema::Person>, and less typically of an L<SemanticWeb::Schema::Organization>, to indicate a topic that is known about - suggesting possible expertise but not implying it. We do not distinguish skill levels here, or relate this to educational content, events, objectives or L<SemanticWeb::Schema::JobPosting> descriptions.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
