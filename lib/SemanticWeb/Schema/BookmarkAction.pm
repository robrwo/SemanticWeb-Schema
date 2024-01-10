use utf8;

package SemanticWeb::Schema::BookmarkAction;

# ABSTRACT: An agent bookmarks/flags/labels/tags/marks an object.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use MooX::JSON_LD 'BookmarkAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An agent bookmarks/flags/labels/tags/marks an object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
