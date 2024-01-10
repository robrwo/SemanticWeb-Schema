use utf8;

package SemanticWeb::Schema::newsUpdatesAndGuidelines;

# ABSTRACT: Indicates a page with news updates and guidelines

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'newsUpdatesAndGuidelines';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a page with news updates and guidelines. This could often be (but is not required to be) the main page containing L<SemanticWeb::Schema::SpecialAnnouncement> markup on a site.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
