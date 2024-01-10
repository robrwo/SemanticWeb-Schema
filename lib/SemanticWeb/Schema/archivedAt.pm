use utf8;

package SemanticWeb::Schema::archivedAt;

# ABSTRACT: Indicates a page or other link involved in archival of a [[CreativeWork]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'archivedAt';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a page or other link involved in archival of a L<SemanticWeb::Schema::CreativeWork>. In the case of L<SemanticWeb::Schema::MediaReview>, the items in a L<SemanticWeb::Schema::MediaReviewItem> may often become inaccessible, but be archived by archival, journalistic, activist, or law enforcement organizations. In such cases, the referenced page may not directly publish the content.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
